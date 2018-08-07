import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  name: attr('string'),
  quantity: attr('number'),
  purchaseDate: attr('date'),
  price: attr('number'),
  storageLocation: attr('string'),
  lentAt: attr('date'),
  user: hasOne('user')
});
