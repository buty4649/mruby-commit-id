#include <mruby.h>

#define quote(x) q(x)
#define q(x) #x

void mrb_mruby_commit_id_gem_init(mrb_state *mrb)
{
    mrb_define_global_const(mrb, "MRUBY_COMMIT_ID", mrb_str_new_lit(mrb, quote(MRUBY_COMMIT_ID)));
    mrb_define_global_const(mrb, "MRUBY_COMMIT_ID_SHORT", mrb_str_new_lit(mrb, quote(MRUBY_COMMIT_ID_SHORT)));
}

void mrb_mruby_commit_id_gem_final(mrb_state *mrb)
{
}
