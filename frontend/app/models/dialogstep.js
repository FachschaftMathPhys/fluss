import DS from 'ember-data';

export default DS.Model.extend({
  start: DS.belongsTo('start',{inverse: 'first'}),
  financingApplications: DS.hasMany('financingApplication',{inverse: 'fastep'}),
  disbursalRequests: DS.hasMany('disbursalRequest',{inverse:'drstep'}),
  offerComparisons: DS.hasMany('offerComparison',{inverse:'ocstep'}),
  inpaymentDeclarations: DS.hasMany('inpaymentDeclaration',{inverse:'idstep'}),
  theoretikumBillings: DS.hasMany('theoretikumBilling',{inverse:'tbstep'}),
  fsResolutions: DS.hasMany('fsResolution',{inverse: 'frstep'})

});
