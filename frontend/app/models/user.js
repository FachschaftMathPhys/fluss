import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  accounts: hasMany('account'),
  name: attr('string'),
  username: attr('string'),
  disbursalRequests: hasMany('disbursal-request'),
  inpaymentDeclarations: hasMany('inpayment-declaration'),
  theoretikumBillings: hasMany('theoretikum-billing'),
  fsResolutions: hasMany('fs-resolution'),
  financingApplications: hasMany('financing-application'),
  offerComparisons: hasMany('offer-comparison')
});
