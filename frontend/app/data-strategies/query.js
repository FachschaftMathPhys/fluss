import RequestStrategy from '@orbit/coordinator';
// Query the remote server whenever the store is queried
export default{
  create() {
    return new RequestStrategy({
      name:"query",
      source: 'store',
      on: 'beforeQuery',
      target: 'remote',
      action: 'pull',
      blocking: false
    });
  }
}
