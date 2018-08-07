import RequestStrategy from '@orbit/coordinator';
// Query the remote server whenever the store is queried
export default{
  create() {
    return new RequestStrategy({
      name:'update',
      source: 'store',
      on: 'beforeUpdate',
      target: 'remote',
      action: 'push',
      blocking: false
    });
  }
}
