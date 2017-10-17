import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),
  disbursalRequests: DS.hasMany('disbursal-request'),
  inpaymentDeclarations: DS.hasMany('inpayment-declaration'),
  theoretikumBillings: DS.hasMany('theoretikum-billing')
});
