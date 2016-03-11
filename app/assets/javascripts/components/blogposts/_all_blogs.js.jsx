var AllBlogs = React.createClass({
  getInitialState() {
    return { blogs: [] }
  },

  componentDidMount() {
    $.getJSON('api/v1/blogposts.json', (response) => { this.setState({blogs: response}) });
  },

  render() {
    var blogs = this.state.blogs.map((blog) => {
      return (
        <div>
          <Blog blog={blog} />
        </div>
      )
    });
    return (
      <div>
        {blogs}
      </div>
    )
  }

});