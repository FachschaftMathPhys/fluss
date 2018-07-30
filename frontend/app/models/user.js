import DS from 'ember-data';

export default DS.Model.extend({
  accounts: DS.hasMany('account'),
  name: DS.attr('string'),
  username: DS.attr('string'),
  disbursalRequests: DS.hasMany('disbursal-request'),
  inpaymentDeclarations: DS.hasMany('inpayment-declaration'),
  theoretikumBillings: DS.hasMany('theoretikum-billing'),
  fsResolutions: DS.hasMany('fs-resolution'),
  financingApplications: DS.hasMany('financing-application'),
  offerComparisons: DS.hasMany('offer-comparison')
});
