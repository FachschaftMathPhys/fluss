import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(),
  name: attr('string'),
  description: attr('string'),
  disbursalRequests: hasMany('disbursal-request'),
  inpaymentDeclarations: hasMany('inpayment-declaration'),
  theoretikumBillings: hasMany('theoretikum-billing')
});
