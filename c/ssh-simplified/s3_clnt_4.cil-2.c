extern void __VERIFIER_error() __attribute__ ((__noreturn__));

extern char __VERIFIER_nondet_char(void);
extern int __VERIFIER_nondet_int(void);
extern long __VERIFIER_nondet_long(void);
extern int __VERIFIER_nondet_int();
/* Generated by CIL v. 1.3.6 */
/* print_CIL_Input is true */

int ssl3_connect(int initial_state ) 
{ int s__info_callback = __VERIFIER_nondet_int() ;
  int s__in_handshake = __VERIFIER_nondet_int() ;
  int s__state ;
  int s__new_session ;
  int s__server ;
  int s__version = __VERIFIER_nondet_int() ;
  int s__type ;
  int s__init_num ;
  int s__bbio = __VERIFIER_nondet_int() ;
  int s__wbio = __VERIFIER_nondet_int() ;
  int s__hit = __VERIFIER_nondet_int() ;
  int s__rwstate ;
  int s__init_buf___0 = __VERIFIER_nondet_int() ;
  int s__debug = __VERIFIER_nondet_int() ;
  int s__shutdown ;
  int s__ctx__info_callback = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_connect_renegotiate = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_connect = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_hit = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_connect_good = __VERIFIER_nondet_int() ;
  int s__s3__change_cipher_spec ;
  int s__s3__flags = __VERIFIER_nondet_int() ;
  int s__s3__delay_buf_pop_ret ;
  int s__s3__tmp__cert_req = __VERIFIER_nondet_int() ;
  int s__s3__tmp__new_compression = __VERIFIER_nondet_int() ;
  int s__s3__tmp__reuse_message = __VERIFIER_nondet_int() ;
  int s__s3__tmp__new_cipher = __VERIFIER_nondet_int() ;
  int s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int() ;
  int s__s3__tmp__next_state___0 ;
  int s__s3__tmp__new_compression__id = __VERIFIER_nondet_int() ;
  int s__session__cipher ;
  int s__session__compress_meth ;
  int buf ;
  unsigned long tmp ;
  unsigned long l ;
  int num1 = __VERIFIER_nondet_int() ;
  int cb ;
  int ret ;
  int new_state ;
  int state ;
  int skip ;
  int tmp___0 ;
  int tmp___1 = __VERIFIER_nondet_int() ;
  int tmp___2 = __VERIFIER_nondet_int() ;
  int tmp___3 = __VERIFIER_nondet_int() ;
  int tmp___4 = __VERIFIER_nondet_int() ;
  int tmp___5 = __VERIFIER_nondet_int() ;
  int tmp___6 = __VERIFIER_nondet_int() ;
  int tmp___7 = __VERIFIER_nondet_int() ;
  int tmp___8 = __VERIFIER_nondet_int() ;
  int tmp___9 = __VERIFIER_nondet_int() ;
  int blastFlag ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  long __cil_tmp57 ;
  long __cil_tmp58 ;
  long __cil_tmp59 ;
  long __cil_tmp60 ;
  long __cil_tmp61 ;
  long __cil_tmp62 ;
  long __cil_tmp63 ;
  long __cil_tmp64 ;
  long __cil_tmp65 ;

  {
;
  s__state = initial_state;
  blastFlag = 0;
  tmp = __VERIFIER_nondet_int();
  cb = 0;
  ret = -1;
  skip = 0;
  tmp___0 = 0;
  if (s__info_callback != 0) {
    cb = s__info_callback;
  } else {
    if (s__ctx__info_callback != 0) {
      cb = s__ctx__info_callback;
    }
  }
  s__in_handshake ++;
  if (tmp___1 + 12288) {
    if (tmp___2 + 16384) {

    }
  }
  {
  while (1) {
    while_0_continue: /* CIL Label */ ;
    state = s__state;
    if (s__state == 12292) {
      goto switch_1_12292;
    } else {
      if (s__state == 16384) {
        goto switch_1_16384;
      } else {
        if (s__state == 4096) {
          goto switch_1_4096;
        } else {
          if (s__state == 20480) {
            goto switch_1_20480;
          } else {
            if (s__state == 4099) {
              goto switch_1_4099;
            } else {
              if (s__state == 4368) {
                goto switch_1_4368;
              } else {
                if (s__state == 4369) {
                  goto switch_1_4369;
                } else {
                  if (s__state == 4384) {
                    goto switch_1_4384;
                  } else {
                    if (s__state == 4385) {
                      goto switch_1_4385;
                    } else {
                      if (s__state == 4400) {
                        goto switch_1_4400;
                      } else {
                        if (s__state == 4401) {
                          goto switch_1_4401;
                        } else {
                          if (s__state == 4416) {
                            goto switch_1_4416;
                          } else {
                            if (s__state == 4417) {
                              goto switch_1_4417;
                            } else {
                              if (s__state == 4432) {
                                goto switch_1_4432;
                              } else {
                                if (s__state == 4433) {
                                  goto switch_1_4433;
                                } else {
                                  if (s__state == 4448) {
                                    goto switch_1_4448;
                                  } else {
                                    if (s__state == 4449) {
                                      goto switch_1_4449;
                                    } else {
                                      if (s__state == 4464) {
                                        goto switch_1_4464;
                                      } else {
                                        if (s__state == 4465) {
                                          goto switch_1_4465;
                                        } else {
                                          if (s__state == 4466) {
                                            goto switch_1_4466;
                                          } else {
                                            if (s__state == 4467) {
                                              goto switch_1_4467;
                                            } else {
                                              if (s__state == 4480) {
                                                goto switch_1_4480;
                                              } else {
                                                if (s__state == 4481) {
                                                  goto switch_1_4481;
                                                } else {
                                                  if (s__state == 4496) {
                                                    goto switch_1_4496;
                                                  } else {
                                                    if (s__state == 4497) {
                                                      goto switch_1_4497;
                                                    } else {
                                                      if (s__state == 4512) {
                                                        goto switch_1_4512;
                                                      } else {
                                                        if (s__state == 4513) {
                                                          goto switch_1_4513;
                                                        } else {
                                                          if (s__state == 4528) {
                                                            goto switch_1_4528;
                                                          } else {
                                                            if (s__state == 4529) {
                                                              goto switch_1_4529;
                                                            } else {
                                                              if (s__state == 4560) {
                                                                goto switch_1_4560;
                                                              } else {
                                                                if (s__state == 4561) {
                                                                  goto switch_1_4561;
                                                                } else {
                                                                  if (s__state == 4352) {
                                                                    goto switch_1_4352;
                                                                  } else {
                                                                    if (s__state == 3) {
                                                                      goto switch_1_3;
                                                                    } else {
                                                                      goto switch_1_default;
                                                                      if (0) {
                                                                        switch_1_12292: 
                                                                        s__new_session = 1;
                                                                        s__state = 4096;
                                                                        s__ctx__stats__sess_connect_renegotiate ++;
                                                                        switch_1_16384: ;
                                                                        switch_1_4096: ;
                                                                        switch_1_20480: ;
                                                                        switch_1_4099: 
                                                                        s__server = 0;
                                                                        if (cb != 0) {

                                                                        }
                                                                        {
                                                                        __cil_tmp55 = s__version + 65280;
                                                                        if (__cil_tmp55 != 768) {
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        }
                                                                        s__type = 4096;
                                                                        if (s__init_buf___0 == 0) {
                                                                          buf = __VERIFIER_nondet_int();
                                                                          if (buf == 0) {
                                                                            ret = -1;
                                                                            goto end;
                                                                          }
                                                                          if (! tmp___3) {
                                                                            ret = -1;
                                                                            goto end;
                                                                          }
                                                                          s__init_buf___0 = buf;
                                                                        }
                                                                        if (! tmp___4) {
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        if (! tmp___5) {
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        s__state = 4368;
                                                                        s__ctx__stats__sess_connect ++;
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4368: ;
                                                                        switch_1_4369: 
                                                                        s__shutdown = 0;
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (blastFlag == 0) {
                                                                          blastFlag = 1;
                                                                        }
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        s__state = 4384;
                                                                        s__init_num = 0;
                                                                        if (s__bbio != s__wbio) {

                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4384: ;
                                                                        switch_1_4385: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (blastFlag == 1) {
                                                                          blastFlag = 2;
                                                                        }
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        if (s__hit) {
                                                                          s__state = 4560;
                                                                        } else {
                                                                          s__state = 4400;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4400: ;
                                                                        switch_1_4401: ;
                                                                        {
                                                                        __cil_tmp56 = (unsigned long )s__s3__tmp__new_cipher__algorithms;
                                                                        if (__cil_tmp56 + 256UL) {
                                                                          skip = 1;
                                                                        } else {
                                                                          ret = __VERIFIER_nondet_int();
                                                                          if (blastFlag == 2) {
                                                                            blastFlag = 3;
                                                                          } else {
                                                                            if (blastFlag == 4) {
                                                                              blastFlag = 5;
                                                                            }
                                                                          }
                                                                          if (ret <= 0) {
                                                                            goto end;
                                                                          }
                                                                        }
                                                                        }
                                                                        s__state = 4416;
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4416: ;
                                                                        switch_1_4417: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (blastFlag == 3) {
                                                                          blastFlag = 4;
                                                                        }
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        s__state = 4432;
                                                                        s__init_num = 0;
                                                                        if (! tmp___6) {
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4432: ;
                                                                        switch_1_4433: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (blastFlag == 4) {
                                                                          goto ERROR;
                                                                        }
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        s__state = 4448;
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4448: ;
                                                                        switch_1_4449: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        if (s__s3__tmp__cert_req) {
                                                                          s__state = 4464;
                                                                        } else {
                                                                          s__state = 4480;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4464: ;
                                                                        switch_1_4465: ;
                                                                        switch_1_4466: ;
                                                                        switch_1_4467: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        s__state = 4480;
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4480: ;
                                                                        switch_1_4481: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        l = (unsigned long )s__s3__tmp__new_cipher__algorithms;
                                                                        if (s__s3__tmp__cert_req == 1) {
                                                                          s__state = 4496;
                                                                        } else {
                                                                          s__state = 4512;
                                                                          s__s3__change_cipher_spec = 0;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4496: ;
                                                                        switch_1_4497: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        s__state = 4512;
                                                                        s__init_num = 0;
                                                                        s__s3__change_cipher_spec = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4512: ;
                                                                        switch_1_4513: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        s__state = 4528;
                                                                        s__init_num = 0;
                                                                        s__session__cipher = s__s3__tmp__new_cipher;
                                                                        if (s__s3__tmp__new_compression == 0) {
                                                                          s__session__compress_meth = 0;
                                                                        } else {
                                                                          s__session__compress_meth = s__s3__tmp__new_compression__id;
                                                                        }
                                                                        if (! tmp___7) {
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        if (! tmp___8) {
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4528: ;
                                                                        switch_1_4529: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        s__state = 4352;
                                                                        __cil_tmp57 = (long )s__s3__flags;
                                                                        __cil_tmp58 = __cil_tmp57 - 5;
                                                                        s__s3__flags = (int )__cil_tmp58;
                                                                        if (s__hit) {
                                                                          s__s3__tmp__next_state___0 = 3;
                                                                          {
                                                                          __cil_tmp59 = (long )s__s3__flags;
                                                                          if (__cil_tmp59 + 2L) {
                                                                            s__state = 3;
                                                                            __cil_tmp60 = (long )s__s3__flags;
                                                                            __cil_tmp61 = __cil_tmp60 * 4L;
                                                                            s__s3__flags = (int )__cil_tmp61;
                                                                            s__s3__delay_buf_pop_ret = 0;
                                                                          }
                                                                          }
                                                                        } else {
                                                                          s__s3__tmp__next_state___0 = 4560;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4560: ;
                                                                        switch_1_4561: 
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
                                                                        if (s__hit) {
                                                                          s__state = 4512;
                                                                        } else {
                                                                          s__state = 3;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4352: 
                                                                        {
                                                                        __cil_tmp62 = (long )num1;
                                                                        if (__cil_tmp62 > 0L) {
                                                                          s__rwstate = 2;
                                                                          num1 = tmp___9;
                                                                          {
                                                                          __cil_tmp63 = (long )num1;
                                                                          if (__cil_tmp63 <= 0L) {
                                                                            ret = -1;
                                                                            goto end;
                                                                          }
                                                                          }
                                                                          s__rwstate = 1;
                                                                        }
                                                                        }
                                                                        s__state = s__s3__tmp__next_state___0;
                                                                        goto switch_1_break;
                                                                        switch_1_3: 
                                                                        if (s__init_buf___0 != 0) {
                                                                          s__init_buf___0 = 0;
                                                                        }
                                                                        {
                                                                        __cil_tmp64 = (long )s__s3__flags;
                                                                        __cil_tmp65 = __cil_tmp64 + 4L;
                                                                        if (! __cil_tmp65) {

                                                                        }
                                                                        }
                                                                        s__init_num = 0;
                                                                        s__new_session = 0;
                                                                        if (s__hit) {
                                                                          s__ctx__stats__sess_hit ++;
                                                                        }
                                                                        ret = 1;
                                                                        s__ctx__stats__sess_connect_good ++;
                                                                        if (cb != 0) {

                                                                        }
                                                                        goto end;
                                                                        switch_1_default: 
                                                                        ret = -1;
                                                                        goto end;
                                                                      } else {
                                                                        switch_1_break: ;
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    if (! s__s3__tmp__reuse_message) {
      if (! skip) {
        if (s__debug) {
          ret = __VERIFIER_nondet_int();
          if (ret <= 0) {
            goto end;
          }
        }
        if (cb != 0) {
          if (s__state != state) {
            new_state = s__state;
            s__state = state;
            s__state = new_state;
          }
        }
      }
    }
    skip = 0;
  }
  while_0_break: /* CIL Label */ ;
  }

  end: 
  s__in_handshake --;
  if (cb != 0) {

  }
  return (ret);
  ERROR: __VERIFIER_error();
  return (-1);
}
}
int main(void) 
{ int s ;

  {
  {
  s = 12292;
  ssl3_connect(s);
  }
  return (0);
}
}
