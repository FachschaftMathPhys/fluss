import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  classificationNumber: attr('decimal'),
  amount: attr('decimal'),
  title: attr('string'),
  description: attr('string'),
  examples: attr('string'),
  disbursalRequests: hasMany('disbursal-request'),
  inpaymentDeclarations: hasMany('inpayment-declaration'),
  theoretikumBillings: hasMany('theoretikum-billing')
});
