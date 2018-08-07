import JSONAPISource from '@orbit/jsonapi';
import Orbit from '@orbit/data';
import fetch from 'fetch';

export default {
  create(injections = {}) {
    // Use `fetch` implementation from `ember-fetch`
    Orbit.fetch = fetch;

    injections.name = 'remote';
    injections.namespace = 'api';
    injections.host = "http://0.0.0.0:3000"
    return new JSONAPISource(injections);
  }
};
