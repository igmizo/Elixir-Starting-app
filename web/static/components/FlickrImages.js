import React from 'react';
import SearchByAuthor from '../components/SearchByAuthor';
import FoundImages from '../components/FoundImages';


class FlickrImages extends React.Component {
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