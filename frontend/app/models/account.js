import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(),
  iban: attr('string'),
  bic: attr('string'),
  recipient: attr('string'),
  user: hasOne('user'),
  disbursalRequests: hasMany('disbursal-request')
});
