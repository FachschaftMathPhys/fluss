import { moduleForModel, test } from 'ember-qunit';

moduleForModel('offer-comparison', 'Unit | Model | offer comparison', {
  // Specify the other units that are required for this test.
  needs: ['model:disbursal-request', 'model:theoretikum-billing', 'model:fs-resolution']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
