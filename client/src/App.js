import React, {useState, useEffect} from 'react';
import './App.css';
import {Grid} from 'semantic-ui-react'; 
import axios from 'axios'; 

const App = () => {
  const [tweets, setTweets] = useState([])

  useEffect(() => {
    axios.get('/api/tweets')
    .then( res => setTweets(res.data) )
  }, [])

  return (
    <Grid>
    <Grid.Row>
      <Grid.Column mobile={16} tablet={16} computer={4} >
      </Grid.Column>
      <Grid.Column mobile={16} tablet={16} computer={10}>
      </Grid.Column>
    </Grid.Row>
  </Grid>
  );
}

export default App;
