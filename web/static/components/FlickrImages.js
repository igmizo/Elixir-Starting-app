import React from 'react';
import SearchByAuthor from '../components/SearchByAuthor';
import FoundImages from '../components/FoundImages';

import axios from 'axios';

class FlickrImages extends React.Component {
  componentDidMount() {
    axios.get("https://jsonplaceholder.typicode.com/posts/1")
      .then(res => {
        console.log(res);
        // this.setState({data})
      });
  }
  render() {
    return (
      <div>
        <SearchByAuthor />
        <FoundImages />
      </div>
    );
  }
}

export default FlickrImages;