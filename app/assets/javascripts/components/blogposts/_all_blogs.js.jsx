var AllBlogs = React.createClass({
  getInitialState() {
    return { blogs: [] }
  },

  componentDidMount() {
    $.getJSON('api/v1/blogposts.json', (response) => { this.setState({blogs: response}) });
  },

  render() {
    if (this.state.blogs[0]){
      this.state.blogs.map(function(blog){
        return (
          <div>
            Title: {blog.title}
          </div>
        )
      });
    }
    else {
      return (
        <div>Title</div>
      )
    }
    }

});