import DS from 'ember-data';

export default DS.Model.extend({
  start: DS.belongsTo('start',{inverse: 'first'}),
  options: DS.hasMany('option',{inverse:'optionfollowup'}),
  initmodels: DS.hasMany('initmodel',{inverse: 'initfollowup'}),
  selections: DS.hasMany('selection',{inverse: 'selfollowup'}),
  inpaymentDeclarations: DS.hasMany('inpayment-declaration',{inverse:'idstep'}),
  offerComparisons: DS.hasMany('offer-comparison',{inverse:'ocstep'}),
  theoretikumBillings: DS.hasMany('theoretikum-billing',{inverse:'tbstep'}),
  financingApplications: DS.hasMany('financing-application',{inverse:'fastep'}),
  disbursalRequests: DS.hasMany('disbursal-request',{inverse:'drstep'}),
  fsResolutions: DS.hasMany('fs-resolution',{inverse:'fsstep'}),
});
