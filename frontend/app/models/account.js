import DS from 'ember-data';

export default DS.Model.extend({
  iban: DS.attr('string'),
  bic: DS.attr('string'),
  recipient: DS.attr('string'),
  user: DS.belongsTo('user'),
  disbursalRequests: DS.hasMany('disbursal-request')
});
