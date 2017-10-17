import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  quantity: DS.attr('number'),
  purchaseDate: DS.attr('date'),
  price: DS.attr('number'),
  storageLocation: DS.attr('string'),
  lentAt: DS.attr('date'),
  user: DS.belongsTo('user')
});
