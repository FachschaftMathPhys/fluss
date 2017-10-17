import DS from 'ember-data';

export default DS.Model.extend({
  classificationNumber: DS.attr('decimal'),
  amount: DS.attr('decimal'),
  title: DS.attr('string'),
  description: DS.attr('string'),
  examples: DS.attr('string'),
  disbursalRequests: DS.hasMany('disbursal-request'),
  inpaymentDeclarations: DS.hasMany('inpayment-declaration'),
  theoretikumBillings: DS.hasMany('theoretikum-billing')
});
