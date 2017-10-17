import DS from 'ember-data';

export default DS.Model.extend({
  price1: DS.attr('number'),
  price2: DS.attr('number'),
  price3: DS.attr('number'),
  productDescription1: DS.attr('string'),
  productDescription2: DS.attr('string'),
  productDescription3: DS.attr('string'),
  offeror1: DS.attr('string'),
  offeror2: DS.attr('string'),
  offeror3: DS.attr('string'),
  link1: DS.attr('string'),
  link2: DS.attr('string'),
  link3: DS.attr('string'),
  explanation: DS.attr('string')
});
