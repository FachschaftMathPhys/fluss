import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  percentage: attr('number'),
  quantity: attr('number'),
  volume: attr('number'),
  name: attr('string'),
  disbursalRequest: hasOne('disbursal-request')
});
