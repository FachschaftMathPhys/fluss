import DS from 'ember-data';

export default DS.Model.extend({
  percentage: DS.attr('number'),
  quantity: DS.attr('number'),
  volume: DS.attr('number'),
  name: DS.attr('string'),
  disbursalRequest: DS.belongsTo('disbursal-request')
});
