import DS from 'ember-data';

export default DS.Model.extend({
  accounts: DS.hasMany('account'),
  name: DS.attr('string'),
  username: DS.attr('string')
});
