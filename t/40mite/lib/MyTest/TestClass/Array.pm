package MyTest::TestClass::Array;

use MyTest::Mite;
use Sub::HandlesVia;

has attr => (
  is => 'rwp',
  isa => 'ArrayRef',
  handles_via => 'Array',
  handles => {
    'my_accessor' => 'accessor',
    'my_all' => 'all',
    'my_all_true' => 'all_true',
    'my_any' => 'any',
    'my_apply' => 'apply',
    'my_clear' => 'clear',
    'my_count' => 'count',
    'my_delete' => 'delete',
    'my_elements' => 'elements',
    'my_first' => 'first',
    'my_first_index' => 'first_index',
    'my_flatten' => 'flatten',
    'my_flatten_deep' => 'flatten_deep',
    'my_for_each' => 'for_each',
    'my_for_each_pair' => 'for_each_pair',
    'my_get' => 'get',
    'my_grep' => 'grep',
    'my_head' => 'head',
    'my_insert' => 'insert',
    'my_is_empty' => 'is_empty',
    'my_join' => 'join',
    'my_map' => 'map',
    'my_max' => 'max',
    'my_maxstr' => 'maxstr',
    'my_min' => 'min',
    'my_minstr' => 'minstr',
    'my_natatime' => 'natatime',
    'my_not_all_true' => 'not_all_true',
    'my_pairfirst' => 'pairfirst',
    'my_pairgrep' => 'pairgrep',
    'my_pairkeys' => 'pairkeys',
    'my_pairmap' => 'pairmap',
    'my_pairs' => 'pairs',
    'my_pairvalues' => 'pairvalues',
    'my_pick_random' => 'pick_random',
    'my_pop' => 'pop',
    'my_print' => 'print',
    'my_product' => 'product',
    'my_push' => 'push',
    'my_reduce' => 'reduce',
    'my_reductions' => 'reductions',
    'my_reset' => 'reset',
    'my_reverse' => 'reverse',
    'my_sample' => 'sample',
    'my_set' => 'set',
    'my_shallow_clone' => 'shallow_clone',
    'my_shift' => 'shift',
    'my_shuffle' => 'shuffle',
    'my_shuffle_in_place' => 'shuffle_in_place',
    'my_sort' => 'sort',
    'my_sort_in_place' => 'sort_in_place',
    'my_splice' => 'splice',
    'my_sum' => 'sum',
    'my_tail' => 'tail',
    'my_uniq' => 'uniq',
    'my_uniq_in_place' => 'uniq_in_place',
    'my_uniqnum' => 'uniqnum',
    'my_uniqnum_in_place' => 'uniqnum_in_place',
    'my_uniqstr' => 'uniqstr',
    'my_uniqstr_in_place' => 'uniqstr_in_place',
    'my_unshift' => 'unshift',
  },
  default => sub { [] },
);

1;

