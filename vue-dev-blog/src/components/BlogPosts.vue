<script>
import BlogPost from './BlogPost.vue'
import DocumentationIcon from './icons/IconDocumentation.vue'

const API_BASE_URL = null // 1. set value to the API BASE URL
const API_URL = null // 2. set API URL `${API_BASE_URL}/data/path/here`

export default {
  components: {
    BlogPost,
    DocumentationIcon
  },
  data() {
    return {
      tokens: null,
      posts : [],
      category: null, 
      includes: null
    };
  },
  computed: {
    /** 
     * Query params added to the API_URL to filter data
     */
    postFilters() {
      let str = "?";
      // filter categories
      if( this.category ) str = `${str}category=${this.category}`;
      if( this.includes ) str = `${str}&includes=${this.includes}`;
      return str;
    }
  },

  created() {
    // API Login
    if( API_BASE_URL ) {
      this.apiLogin().then( ()=> {
        // fetch data
        if( this.tokens && API_URL ) this.fetchData();
      });
    }
  },

  methods: {
    /** 
     * Fetch blog posts
     */
    async fetchData() {
      const url = `${API_URL}${this.postFilters}`;
      fetch( url, {
        method: 'GET',
        headers: { "Content-Type": "application/json", "Authorization" :  "Bearer " + this.tokens.access_token  }
      })
      .then((response) => response.json())
      .then(( data ) => {
        // order and save date in "posts"
        this.posts = data.data.sort((a, b) => a.publishedDate - b.publishedDate) ;
      });
      
    },
    /** 
     * Init API session
     */
    async apiLogin() {
      await fetch(`${API_BASE_URL}/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ "username": "...","password": "..." }), // 3. correct credentials
      })
        .then((response) => response.json())
        .then((result) => {
          console.log('Success:', result);
          // extract tokens
          this.tokens = result.data.tokens
        })
        .catch((error) => {
          console.error('Error:', error);
        });
    },
    stripHTML(s) {
      var span = document.createElement('span');
      span.innerHTML = s;
      return span.textContent || span.innerText;
    }
  }

};
</script>

<template>
  <div>
    <p v-if="!posts.length" class="nodatamsg">No posts por ahora.</p>
    <BlogPost v-for="post in posts" :key="post.id">
      <template #icon>
        <DocumentationIcon />
      </template>
      <template #heading>{{ post.title }}</template>
      <p class="author">By {{ post.creator.name }} on {{ post.publishedDate }}</p>
      
      <div v-html="post.excerpt" v-if="post.excerpt"></div>
      <div v-else class="truncate">{{ stripHTML( post.renderedContent ) }}</div>

    </BlogPost>
  </div>
</template>

<style scoped>
  .truncate {
    max-height: 250px;
    overflow: hidden;
  }
  .nodatamsg {
    text-align: center;
    padding: 20px;
    color: #999;
  }
  .author {
    padding-bottom: 15px;
  }
</style>
