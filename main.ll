; ModuleID = 'main.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%class.BST_TREE = type { %class._BST_TREE_NODE* }
%class._BST_TREE_NODE = type { i8*, %class._BST_TREE_NODE*, %class._BST_TREE_NODE* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl" }
%"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl" = type { i8**, i8**, i8** }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { i8** }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZZ4mainE3aux = private unnamed_addr constant [9 x i8] c"santiago\00", align 1
@_ZZ4mainE4pedo = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@_ZZ4mainE4olep = private unnamed_addr constant [9 x i8] c"cristina\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_Z7greaterii(i32 %a, i32 %b) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = icmp sgt i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @_Z4initPi(i32* %val) #2 {
  %1 = alloca i32*, align 8
  store i32* %val, i32** %1, align 8
  %2 = load i32** %1, align 8
  store i32 0, i32* %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_Z3sumii(i32 %a, i32 %b) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = add nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @_Z7comparePcS_(i8* %a, i8* %b) #2 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %a, i8** %1, align 8
  store i8* %b, i8** %2, align 8
  %3 = load i8** %1, align 8
  %4 = load i8** %2, align 8
  %5 = call i32 @strcmp(i8* %3, i8* %4) #12
  %6 = call i32 @abs(i32 %5) #13
  ret i32 %6
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #5 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %aux = alloca [9 x i8], align 1
  %pedo = alloca [4 x i8], align 1
  %olep = alloca [9 x i8], align 1
  %bst = alloca %class.BST_TREE, align 8
  %vectorls = alloca %"class.std::vector", align 8
  %i = alloca i32, align 4
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %7 = bitcast [9 x i8]* %aux to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([9 x i8]* @_ZZ4mainE3aux, i32 0, i32 0), i64 9, i32 1, i1 false)
  %8 = bitcast [4 x i8]* %pedo to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds ([4 x i8]* @_ZZ4mainE4pedo, i32 0, i32 0), i64 4, i32 1, i1 false)
  %9 = bitcast [9 x i8]* %olep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds ([9 x i8]* @_ZZ4mainE4olep, i32 0, i32 0), i64 9, i32 1, i1 false)
  %10 = getelementptr inbounds [9 x i8]* %aux, i32 0, i32 0
  call void @_ZN8BST_TREEIPcEC2ES0_(%class.BST_TREE* %bst, i8* %10)
  %11 = getelementptr inbounds [4 x i8]* %pedo, i32 0, i32 0
  call void @_ZN8BST_TREEIPcE6insertES0_PFiS0_S0_E(%class.BST_TREE* %bst, i8* %11, i32 (i8*, i8*)* @_Z7comparePcS_)
  %12 = getelementptr inbounds [9 x i8]* %olep, i32 0, i32 0
  call void @_ZN8BST_TREEIPcE6insertES0_PFiS0_S0_E(%class.BST_TREE* %bst, i8* %12, i32 (i8*, i8*)* @_Z7comparePcS_)
  call void @_ZN8BST_TREEIPcE8in_orderEv(%"class.std::vector"* sret %vectorls, %class.BST_TREE* %bst)
  store i32 0, i32* %i, align 4
  br label %13

; <label>:13                                      ; preds = %29, %0
  %14 = load i32* %i, align 4
  %15 = zext i32 %14 to i64
  %16 = invoke i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(%"class.std::vector"* %vectorls)
          to label %17 unwind label %32

; <label>:17                                      ; preds = %13
  %18 = icmp ult i64 %15, %16
  br i1 %18, label %19, label %36

; <label>:19                                      ; preds = %17
  %20 = load i32* %i, align 4
  %21 = zext i32 %20 to i64
  %22 = invoke i8** @_ZNSt6vectorIPcSaIS0_EEixEm(%"class.std::vector"* %vectorls, i64 %21)
          to label %23 unwind label %32

; <label>:23                                      ; preds = %19
  %24 = load i8** %22
  %25 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* %24)
          to label %26 unwind label %32

; <label>:26                                      ; preds = %23
  %27 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %25, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0))
          to label %28 unwind label %32

; <label>:28                                      ; preds = %26
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load i32* %i, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %13

; <label>:32                                      ; preds = %26, %23, %19, %13
  %33 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %4
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %5
  invoke void @_ZNSt6vectorIPcSaIS0_EED2Ev(%"class.std::vector"* %vectorls)
          to label %38 unwind label %44

; <label>:36                                      ; preds = %17
  store i32 0, i32* %1
  store i32 1, i32* %6
  call void @_ZNSt6vectorIPcSaIS0_EED2Ev(%"class.std::vector"* %vectorls)
  %37 = load i32* %1
  ret i32 %37

; <label>:38                                      ; preds = %32
  br label %39

; <label>:39                                      ; preds = %38
  %40 = load i8** %4
  %41 = load i32* %5
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

; <label>:44                                      ; preds = %32
  %45 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #14
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN8BST_TREEIPcEC2ES0_(%class.BST_TREE* %this, i8* %rooo) unnamed_addr #5 align 2 {
  %1 = alloca %class.BST_TREE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.BST_TREE* %this, %class.BST_TREE** %1, align 8
  store i8* %rooo, i8** %2, align 8
  %5 = load %class.BST_TREE** %1
  %6 = call noalias i8* @_Znwm(i64 24) #15
  %7 = bitcast i8* %6 to %class._BST_TREE_NODE*
  invoke void @_ZN14_BST_TREE_NODEIPcEC2Ev(%class._BST_TREE_NODE* %7)
          to label %8 unwind label %13

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.BST_TREE* %5, i32 0, i32 0
  store %class._BST_TREE_NODE* %7, %class._BST_TREE_NODE** %9, align 8
  %10 = getelementptr inbounds %class.BST_TREE* %5, i32 0, i32 0
  %11 = load %class._BST_TREE_NODE** %10, align 8
  %12 = load i8** %2, align 8
  call void @_ZN14_BST_TREE_NODEIPcE9set_valueES0_(%class._BST_TREE_NODE* %11, i8* %12)
  ret void

; <label>:13                                      ; preds = %0
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %3
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %4
  call void @_ZdlPv(i8* %6) #16
  br label %17

; <label>:17                                      ; preds = %13
  %18 = load i8** %3
  %19 = load i32* %4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN8BST_TREEIPcE6insertES0_PFiS0_S0_E(%class.BST_TREE* %this, i8* %val, i32 (i8*, i8*)* %_P_) #5 align 2 {
  %1 = alloca %class.BST_TREE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32 (i8*, i8*)*, align 8
  store %class.BST_TREE* %this, %class.BST_TREE** %1, align 8
  store i8* %val, i8** %2, align 8
  store i32 (i8*, i8*)* %_P_, i32 (i8*, i8*)** %3, align 8
  %4 = load %class.BST_TREE** %1
  %5 = getelementptr inbounds %class.BST_TREE* %4, i32 0, i32 0
  %6 = load %class._BST_TREE_NODE** %5, align 8
  %7 = load i8** %2, align 8
  %8 = load i32 (i8*, i8*)** %3, align 8
  call void @_ZN8BST_TREEIPcE6insertEP14_BST_TREE_NODEIS0_ES0_PFiS0_S0_E(%class.BST_TREE* %4, %class._BST_TREE_NODE* %6, i8* %7, i32 (i8*, i8*)* %8)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN8BST_TREEIPcE8in_orderEv(%"class.std::vector"* noalias sret %agg.result, %class.BST_TREE* %this) #5 align 2 {
  %1 = alloca %class.BST_TREE*, align 8
  %2 = alloca i1
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca i32
  store %class.BST_TREE* %this, %class.BST_TREE** %1, align 8
  %6 = load %class.BST_TREE** %1
  store i1 false, i1* %2
  call void @_ZNSt6vectorIPcSaIS0_EEC2Ev(%"class.std::vector"* %agg.result)
  %7 = getelementptr inbounds %class.BST_TREE* %6, i32 0, i32 0
  %8 = load %class._BST_TREE_NODE** %7, align 8
  invoke void @_ZN8BST_TREEIPcE8in_orderEP14_BST_TREE_NODEIS0_ERSt6vectorIS0_SaIS0_EE(%class.BST_TREE* %6, %class._BST_TREE_NODE* %8, %"class.std::vector"* %agg.result)
          to label %9 unwind label %11

; <label>:9                                       ; preds = %0
  store i1 true, i1* %2
  store i32 1, i32* %5
  %10 = load i1* %2
  br i1 %10, label %16, label %15

; <label>:11                                      ; preds = %0
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %3
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %4
  invoke void @_ZNSt6vectorIPcSaIS0_EED2Ev(%"class.std::vector"* %agg.result)
          to label %17 unwind label %23

; <label>:15                                      ; preds = %9
  call void @_ZNSt6vectorIPcSaIS0_EED2Ev(%"class.std::vector"* %agg.result)
  br label %16

; <label>:16                                      ; preds = %15, %9
  ret void

; <label>:17                                      ; preds = %11
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i8** %3
  %20 = load i32* %4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22

; <label>:23                                      ; preds = %11
  %24 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %25 = extractvalue { i8*, i32 } %24, 0
  call void @__clang_call_terminate(i8* %25) #14
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load i8*** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i8*** %9, align 8
  %11 = ptrtoint i8** %6 to i64
  %12 = ptrtoint i8** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

declare i32 @__gxx_personality_v0(...)

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

; Function Attrs: nounwind uwtable
define linkonce_odr i8** @_ZNSt6vectorIPcSaIS0_EEixEm(%"class.std::vector"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i8*** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds i8** %7, i64 %8
  ret i8** %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPcSaIS0_EED2Ev(%"class.std::vector"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %4 = load %"class.std::vector"** %1
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load i8*** %7, align 8
  %9 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load i8*** %11, align 8
  %13 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %14 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E(i8** %8, i8** %12, %"class.std::allocator"* %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIPcSaIS0_EED2Ev(%"struct.std::_Vector_base"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3
  %22 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIPcSaIS0_EED2Ev(%"struct.std::_Vector_base"* %22)
          to label %23 unwind label %29

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i8** %2
  %26 = load i32* %3
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

; <label>:29                                      ; preds = %18
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #14
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #6 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E(i8** %__first, i8** %__last, %"class.std::allocator"*) #7 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store i8** %__first, i8*** %2, align 8
  store i8** %__last, i8*** %3, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  %5 = load i8*** %2, align 8
  %6 = load i8*** %3, align 8
  call void @_ZSt8_DestroyIPPcEvT_S2_(i8** %5, i8** %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPcSaIS0_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i8*** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load i8*** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load i8*** %12, align 8
  %14 = ptrtoint i8** %10 to i64
  %15 = ptrtoint i8** %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  invoke void @_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %4, i8** %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %19) #1
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3
  %24 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %24) #1
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8** %2
  %27 = load i32* %3
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this, i8** %__p, i64 %__n) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i8** %__p, i8*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = load i8*** %2, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %8 to %"class.__gnu_cxx::new_allocator"*
  %10 = load i8*** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %9, i8** %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %this) unnamed_addr #8 align 2 {
  %1 = alloca %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIPcED2Ev(%"class.std::allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPcED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIPcED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPcED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %this, i8** %__p, i64) #2 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i8** %__p, i8*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i8*** %3, align 8
  %7 = bitcast i8** %6 to i8*
  call void @_ZdlPv(i8* %7) #1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #9

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPPcEvT_S2_(i8** %__first, i8** %__last) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  %3 = load i8*** %1, align 8
  %4 = load i8*** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_(i8** %3, i8** %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_(i8**, i8**) #2 align 2 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPcSaIS0_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIPcSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN8BST_TREEIPcE8in_orderEP14_BST_TREE_NODEIS0_ERSt6vectorIS0_SaIS0_EE(%class.BST_TREE* %this, %class._BST_TREE_NODE* %current, %"class.std::vector"* %res) #5 align 2 {
  %1 = alloca %class.BST_TREE*, align 8
  %2 = alloca %class._BST_TREE_NODE*, align 8
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i8*, align 8
  store %class.BST_TREE* %this, %class.BST_TREE** %1, align 8
  store %class._BST_TREE_NODE* %current, %class._BST_TREE_NODE** %2, align 8
  store %"class.std::vector"* %res, %"class.std::vector"** %3, align 8
  %5 = load %class.BST_TREE** %1
  %6 = load %class._BST_TREE_NODE** %2, align 8
  %7 = call i32 @_ZN14_BST_TREE_NODEIPcE12is_left_nullEv(%class._BST_TREE_NODE* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9                                       ; preds = %0
  %10 = load %class._BST_TREE_NODE** %2, align 8
  %11 = call %class._BST_TREE_NODE* @_ZN14_BST_TREE_NODEIPcE8get_leftEv(%class._BST_TREE_NODE* %10)
  %12 = load %"class.std::vector"** %3, align 8
  call void @_ZN8BST_TREEIPcE8in_orderEP14_BST_TREE_NODEIS0_ERSt6vectorIS0_SaIS0_EE(%class.BST_TREE* %5, %class._BST_TREE_NODE* %11, %"class.std::vector"* %12)
  br label %13

; <label>:13                                      ; preds = %9, %0
  %14 = load %"class.std::vector"** %3, align 8
  %15 = load %class._BST_TREE_NODE** %2, align 8
  %16 = call i8* @_ZN14_BST_TREE_NODEIPcE9get_valueEv(%class._BST_TREE_NODE* %15)
  store i8* %16, i8** %4
  call void @_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_(%"class.std::vector"* %14, i8** %4)
  %17 = load %class._BST_TREE_NODE** %2, align 8
  %18 = call i32 @_ZN14_BST_TREE_NODEIPcE13is_right_nullEv(%class._BST_TREE_NODE* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20                                      ; preds = %13
  %21 = load %class._BST_TREE_NODE** %2, align 8
  %22 = call %class._BST_TREE_NODE* @_ZN14_BST_TREE_NODEIPcE8get_rigtEv(%class._BST_TREE_NODE* %21)
  %23 = load %"class.std::vector"** %3, align 8
  call void @_ZN8BST_TREEIPcE8in_orderEP14_BST_TREE_NODEIS0_ERSt6vectorIS0_SaIS0_EE(%class.BST_TREE* %5, %class._BST_TREE_NODE* %22, %"class.std::vector"* %23)
  br label %24

; <label>:24                                      ; preds = %20, %13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN14_BST_TREE_NODEIPcE12is_left_nullEv(%class._BST_TREE_NODE* %this) #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  %2 = load %class._BST_TREE_NODE** %1
  %3 = getelementptr inbounds %class._BST_TREE_NODE* %2, i32 0, i32 1
  %4 = load %class._BST_TREE_NODE** %3, align 8
  %5 = icmp eq %class._BST_TREE_NODE* %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class._BST_TREE_NODE* @_ZN14_BST_TREE_NODEIPcE8get_leftEv(%class._BST_TREE_NODE* %this) #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  %2 = load %class._BST_TREE_NODE** %1
  %3 = getelementptr inbounds %class._BST_TREE_NODE* %2, i32 0, i32 1
  %4 = load %class._BST_TREE_NODE** %3, align 8
  ret %class._BST_TREE_NODE* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_(%"class.std::vector"* %this, i8** %__x) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i8** %__x, i8*** %2, align 8
  %4 = load %"class.std::vector"** %1
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load i8*** %7, align 8
  %9 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %10, i32 0, i32 2
  %12 = load i8*** %11, align 8
  %13 = icmp ne i8** %8, %12
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %16 to %"class.std::allocator"*
  %18 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %19, i32 0, i32 1
  %21 = load i8*** %20, align 8
  %22 = load i8*** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPcEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* %17, i8** %21, i8** %22)
  %23 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %24, i32 0, i32 1
  %26 = load i8*** %25, align 8
  %27 = getelementptr inbounds i8** %26, i32 1
  store i8** %27, i8*** %25, align 8
  br label %34

; <label>:28                                      ; preds = %0
  %29 = call i8** @_ZNSt6vectorIPcSaIS0_EE3endEv(%"class.std::vector"* %4)
  %30 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store i8** %29, i8*** %30
  %31 = load i8*** %2, align 8
  %32 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %33 = load i8*** %32
  call void @_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector"* %4, i8** %33, i8** %31)
  br label %34

; <label>:34                                      ; preds = %28, %14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZN14_BST_TREE_NODEIPcE9get_valueEv(%class._BST_TREE_NODE* %this) #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  %2 = load %class._BST_TREE_NODE** %1
  %3 = getelementptr inbounds %class._BST_TREE_NODE* %2, i32 0, i32 0
  %4 = load i8** %3, align 8
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32 @_ZN14_BST_TREE_NODEIPcE13is_right_nullEv(%class._BST_TREE_NODE* %this) #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  %2 = load %class._BST_TREE_NODE** %1
  %3 = getelementptr inbounds %class._BST_TREE_NODE* %2, i32 0, i32 2
  %4 = load %class._BST_TREE_NODE** %3, align 8
  %5 = icmp eq %class._BST_TREE_NODE* %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class._BST_TREE_NODE* @_ZN14_BST_TREE_NODEIPcE8get_rigtEv(%class._BST_TREE_NODE* %this) #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  %2 = load %class._BST_TREE_NODE** %1
  %3 = getelementptr inbounds %class._BST_TREE_NODE* %2, i32 0, i32 2
  %4 = load %class._BST_TREE_NODE** %3, align 8
  ret %class._BST_TREE_NODE* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPcEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* %__a, i8** %__p, i8** %__arg) #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i8** %__p, i8*** %2, align 8
  store i8** %__arg, i8*** %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load i8*** %2, align 8
  %7 = load i8*** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPcE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* %5, i8** %6, i8** %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector"* %this, i8** %__position.coerce, i8** %__x) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca i8**, align 8
  %__x_copy = alloca i8*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca i8**, align 8
  %__new_finish = alloca i8**, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store i8** %__position.coerce, i8*** %6
  store i8** %__x, i8*** %2, align 8
  %7 = load %"class.std::vector"** %1
  %8 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %9, i32 0, i32 1
  %11 = load i8*** %10, align 8
  %12 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %13, i32 0, i32 2
  %15 = load i8*** %14, align 8
  %16 = icmp ne i8** %11, %15
  br i1 %16, label %17, label %52

; <label>:17                                      ; preds = %0
  %18 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %19 to %"class.std::allocator"*
  %21 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load i8*** %23, align 8
  %25 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %26, i32 0, i32 1
  %28 = load i8*** %27, align 8
  %29 = getelementptr inbounds i8** %28, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPcEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* %20, i8** %24, i8** %29)
  %30 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %31, i32 0, i32 1
  %33 = load i8*** %32, align 8
  %34 = getelementptr inbounds i8** %33, i32 1
  store i8** %34, i8*** %32, align 8
  %35 = load i8*** %2, align 8
  %36 = load i8** %35, align 8
  store i8* %36, i8** %__x_copy, align 8
  %37 = call i8*** @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %38 = load i8*** %37
  %39 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %40, i32 0, i32 1
  %42 = load i8*** %41, align 8
  %43 = getelementptr inbounds i8** %42, i64 -2
  %44 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %45, i32 0, i32 1
  %47 = load i8*** %46, align 8
  %48 = getelementptr inbounds i8** %47, i64 -1
  %49 = call i8** @_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_(i8** %38, i8** %43, i8** %48)
  %50 = load i8** %__x_copy, align 8
  %51 = call i8** @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  store i8* %50, i8** %51
  br label %173

; <label>:52                                      ; preds = %0
  %53 = call i64 @_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %7, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0))
  store i64 %53, i64* %__len, align 8
  %54 = call i8** @_ZNSt6vectorIPcSaIS0_EE5beginEv(%"class.std::vector"* %7)
  %55 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store i8** %54, i8*** %55
  %56 = call i64 @_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* %__position, %"class.__gnu_cxx::__normal_iterator"* %3)
  store i64 %56, i64* %__elems_before, align 8
  %57 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %58 = load i64* %__len, align 8
  %59 = call i8** @_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %57, i64 %58)
  store i8** %59, i8*** %__new_start, align 8
  %60 = load i8*** %__new_start, align 8
  store i8** %60, i8*** %__new_finish, align 8
  %61 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %62 = getelementptr inbounds %"struct.std::_Vector_base"* %61, i32 0, i32 0
  %63 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %62 to %"class.std::allocator"*
  %64 = load i8*** %__new_start, align 8
  %65 = load i64* %__elems_before, align 8
  %66 = getelementptr inbounds i8** %64, i64 %65
  %67 = load i8*** %2, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIPcEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* %63, i8** %66, i8** %67)
          to label %68 unwind label %97

; <label>:68                                      ; preds = %52
  store i8** null, i8*** %__new_finish, align 8
  %69 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %70, i32 0, i32 0
  %72 = load i8*** %71, align 8
  %73 = invoke i8*** @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %74 unwind label %97

; <label>:74                                      ; preds = %68
  %75 = load i8*** %73
  %76 = load i8*** %__new_start, align 8
  %77 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %78 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %77)
          to label %79 unwind label %97

; <label>:79                                      ; preds = %74
  %80 = invoke i8** @_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(i8** %72, i8** %75, i8** %76, %"class.std::allocator"* %78)
          to label %81 unwind label %97

; <label>:81                                      ; preds = %79
  store i8** %80, i8*** %__new_finish, align 8
  %82 = load i8*** %__new_finish, align 8
  %83 = getelementptr inbounds i8** %82, i32 1
  store i8** %83, i8*** %__new_finish, align 8
  %84 = invoke i8*** @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %85 unwind label %97

; <label>:85                                      ; preds = %81
  %86 = load i8*** %84
  %87 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %88 = getelementptr inbounds %"struct.std::_Vector_base"* %87, i32 0, i32 0
  %89 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %88, i32 0, i32 1
  %90 = load i8*** %89, align 8
  %91 = load i8*** %__new_finish, align 8
  %92 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %93 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %92)
          to label %94 unwind label %97

; <label>:94                                      ; preds = %85
  %95 = invoke i8** @_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(i8** %86, i8** %90, i8** %91, %"class.std::allocator"* %93)
          to label %96 unwind label %97

; <label>:96                                      ; preds = %94
  store i8** %95, i8*** %__new_finish, align 8
  br label %131

; <label>:97                                      ; preds = %94, %85, %81, %79, %74, %68, %52
  %98 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %99 = extractvalue { i8*, i32 } %98, 0
  store i8* %99, i8** %4
  %100 = extractvalue { i8*, i32 } %98, 1
  store i32 %100, i32* %5
  br label %101

; <label>:101                                     ; preds = %97
  %102 = load i8** %4
  %103 = call i8* @__cxa_begin_catch(i8* %102) #1
  %104 = load i8*** %__new_finish, align 8
  %105 = icmp ne i8** %104, null
  br i1 %105, label %118, label %106

; <label>:106                                     ; preds = %101
  %107 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %108 = getelementptr inbounds %"struct.std::_Vector_base"* %107, i32 0, i32 0
  %109 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %108 to %"class.std::allocator"*
  %110 = load i8*** %__new_start, align 8
  %111 = load i64* %__elems_before, align 8
  %112 = getelementptr inbounds i8** %110, i64 %111
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIPcEE7destroyERS2_PS1_(%"class.std::allocator"* %109, i8** %112)
          to label %113 unwind label %114

; <label>:113                                     ; preds = %106
  br label %125

; <label>:114                                     ; preds = %129, %125, %123, %118, %106
  %115 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %4
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %5
  invoke void @__cxa_end_catch()
          to label %130 unwind label %179

; <label>:118                                     ; preds = %101
  %119 = load i8*** %__new_start, align 8
  %120 = load i8*** %__new_finish, align 8
  %121 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %122 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %121)
          to label %123 unwind label %114

; <label>:123                                     ; preds = %118
  invoke void @_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E(i8** %119, i8** %120, %"class.std::allocator"* %122)
          to label %124 unwind label %114

; <label>:124                                     ; preds = %123
  br label %125

; <label>:125                                     ; preds = %124, %113
  %126 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %127 = load i8*** %__new_start, align 8
  %128 = load i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %126, i8** %127, i64 %128)
          to label %129 unwind label %114

; <label>:129                                     ; preds = %125
  invoke void @__cxa_rethrow() #17
          to label %182 unwind label %114

; <label>:130                                     ; preds = %114
  br label %174

; <label>:131                                     ; preds = %96
  %132 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %133 = getelementptr inbounds %"struct.std::_Vector_base"* %132, i32 0, i32 0
  %134 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %133, i32 0, i32 0
  %135 = load i8*** %134, align 8
  %136 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %137 = getelementptr inbounds %"struct.std::_Vector_base"* %136, i32 0, i32 0
  %138 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %137, i32 0, i32 1
  %139 = load i8*** %138, align 8
  %140 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %141 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %140)
  call void @_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E(i8** %135, i8** %139, %"class.std::allocator"* %141)
  %142 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %143 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %144 = getelementptr inbounds %"struct.std::_Vector_base"* %143, i32 0, i32 0
  %145 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %144, i32 0, i32 0
  %146 = load i8*** %145, align 8
  %147 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %148 = getelementptr inbounds %"struct.std::_Vector_base"* %147, i32 0, i32 0
  %149 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %148, i32 0, i32 2
  %150 = load i8*** %149, align 8
  %151 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %152 = getelementptr inbounds %"struct.std::_Vector_base"* %151, i32 0, i32 0
  %153 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %152, i32 0, i32 0
  %154 = load i8*** %153, align 8
  %155 = ptrtoint i8** %150 to i64
  %156 = ptrtoint i8** %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 8
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %142, i8** %146, i64 %158)
  %159 = load i8*** %__new_start, align 8
  %160 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %161 = getelementptr inbounds %"struct.std::_Vector_base"* %160, i32 0, i32 0
  %162 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %161, i32 0, i32 0
  store i8** %159, i8*** %162, align 8
  %163 = load i8*** %__new_finish, align 8
  %164 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %165 = getelementptr inbounds %"struct.std::_Vector_base"* %164, i32 0, i32 0
  %166 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %165, i32 0, i32 1
  store i8** %163, i8*** %166, align 8
  %167 = load i8*** %__new_start, align 8
  %168 = load i64* %__len, align 8
  %169 = getelementptr inbounds i8** %167, i64 %168
  %170 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %171 = getelementptr inbounds %"struct.std::_Vector_base"* %170, i32 0, i32 0
  %172 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %171, i32 0, i32 2
  store i8** %169, i8*** %172, align 8
  br label %173

; <label>:173                                     ; preds = %131, %17
  ret void

; <label>:174                                     ; preds = %130
  %175 = load i8** %4
  %176 = load i32* %5
  %177 = insertvalue { i8*, i32 } undef, i8* %175, 0
  %178 = insertvalue { i8*, i32 } %177, i32 %176, 1
  resume { i8*, i32 } %178

; <label>:179                                     ; preds = %114
  %180 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %181 = extractvalue { i8*, i32 } %180, 0
  call void @__clang_call_terminate(i8* %181) #14
  unreachable

; <label>:182                                     ; preds = %129
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr i8** @_ZNSt6vectorIPcSaIS0_EE3endEv(%"class.std::vector"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"** %2
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %1, i8*** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load i8*** %7
  ret i8** %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, i8*** %__i) unnamed_addr #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca i8***, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store i8*** %__i, i8**** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load i8**** %2, align 8
  %6 = load i8*** %5, align 8
  store i8** %6, i8*** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_(i8** %__first, i8** %__last, i8** %__result) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  %4 = load i8*** %1, align 8
  %5 = call i8** @_ZSt12__miter_baseIPPcENSt11_Miter_baseIT_E13iterator_typeES3_(i8** %4)
  %6 = load i8*** %2, align 8
  %7 = call i8** @_ZSt12__miter_baseIPPcENSt11_Miter_baseIT_E13iterator_typeES3_(i8** %6)
  %8 = load i8*** %3, align 8
  %9 = call i8** @_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_(i8** %5, i8** %7, i8** %8)
  ret i8** %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8*** @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  ret i8*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8** @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load i8*** %3, align 8
  ret i8** %4
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector"** %1
  %6 = call i64 @_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv(%"class.std::vector"* %5)
  %7 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(%"class.std::vector"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #17
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(%"class.std::vector"* %5)
  %15 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(%"class.std::vector"* %5)
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(%"class.std::vector"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv(%"class.std::vector"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv(%"class.std::vector"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"* %__rhs) #7 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = call i8*** @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %3)
  %5 = load i8*** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %7 = call i8*** @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %6)
  %8 = load i8*** %7
  %9 = ptrtoint i8** %5 to i64
  %10 = ptrtoint i8** %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr i8** @_ZNSt6vectorIPcSaIS0_EE5beginEv(%"class.std::vector"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"** %2
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %1, i8*** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load i8*** %7
  ret i8** %8
}

; Function Attrs: uwtable
define linkonce_odr i8** @_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load i64* %2, align 8
  %10 = call i8** @_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %8, i64 %9, i8* null)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi i8** [ %10, %6 ], [ null, %11 ]
  ret i8** %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(i8** %__first, i8** %__last, i8** %__result, %"class.std::allocator"* %__alloc) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %4, align 8
  %5 = load i8*** %1, align 8
  %6 = load i8*** %2, align 8
  %7 = load i8*** %3, align 8
  %8 = load %"class.std::allocator"** %4, align 8
  %9 = call i8** @_ZSt22__uninitialized_copy_aIPPcS1_S0_ET0_T_S3_S2_RSaIT1_E(i8** %5, i8** %6, i8** %7, %"class.std::allocator"* %8)
  ret i8** %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPcEE7destroyERS2_PS1_(%"class.std::allocator"* %__a, i8** %__p) #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i8**, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i8** %__p, i8*** %2, align 8
  %3 = load %"class.std::allocator"** %1, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = load i8*** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPcE7destroyEPS1_(%"class.__gnu_cxx::new_allocator"* %4, i8** %5)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPcE7destroyEPS1_(%"class.__gnu_cxx::new_allocator"* %this, i8** %__p) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca i8**, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store i8** %__p, i8*** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"** %1
  %4 = load i8*** %2, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt22__uninitialized_copy_aIPPcS1_S0_ET0_T_S3_S2_RSaIT1_E(i8** %__first, i8** %__last, i8** %__result, %"class.std::allocator"*) #7 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  store i8** %__first, i8*** %2, align 8
  store i8** %__last, i8*** %3, align 8
  store i8** %__result, i8*** %4, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  %6 = load i8*** %2, align 8
  %7 = load i8*** %3, align 8
  %8 = load i8*** %4, align 8
  %9 = call i8** @_ZSt18uninitialized_copyIPPcS1_ET0_T_S3_S2_(i8** %6, i8** %7, i8** %8)
  ret i8** %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt18uninitialized_copyIPPcS1_ET0_T_S3_S2_(i8** %__first, i8** %__last, i8** %__result) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  %4 = load i8*** %1, align 8
  %5 = load i8*** %2, align 8
  %6 = load i8*** %3, align 8
  %7 = call i8** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPcS3_EET0_T_S5_S4_(i8** %4, i8** %5, i8** %6)
  ret i8** %7
}

; Function Attrs: uwtable
define linkonce_odr i8** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPcS3_EET0_T_S5_S4_(i8** %__first, i8** %__last, i8** %__result) #5 align 2 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  %4 = load i8*** %1, align 8
  %5 = load i8*** %2, align 8
  %6 = load i8*** %3, align 8
  %7 = call i8** @_ZSt4copyIPPcS1_ET0_T_S3_S2_(i8** %4, i8** %5, i8** %6)
  ret i8** %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt4copyIPPcS1_ET0_T_S3_S2_(i8** %__first, i8** %__last, i8** %__result) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  %4 = load i8*** %1, align 8
  %5 = call i8** @_ZSt12__miter_baseIPPcENSt11_Miter_baseIT_E13iterator_typeES3_(i8** %4)
  %6 = load i8*** %2, align 8
  %7 = call i8** @_ZSt12__miter_baseIPPcENSt11_Miter_baseIT_E13iterator_typeES3_(i8** %6)
  %8 = load i8*** %3, align 8
  %9 = call i8** @_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_(i8** %5, i8** %7, i8** %8)
  ret i8** %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_(i8** %__first, i8** %__last, i8** %__result) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  %4 = load i8*** %1, align 8
  %5 = call i8** @_ZSt12__niter_baseIPPcENSt11_Niter_baseIT_E13iterator_typeES3_(i8** %4)
  %6 = load i8*** %2, align 8
  %7 = call i8** @_ZSt12__niter_baseIPPcENSt11_Niter_baseIT_E13iterator_typeES3_(i8** %6)
  %8 = load i8*** %3, align 8
  %9 = call i8** @_ZSt12__niter_baseIPPcENSt11_Niter_baseIT_E13iterator_typeES3_(i8** %8)
  %10 = call i8** @_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_(i8** %5, i8** %7, i8** %9)
  ret i8** %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt12__miter_baseIPPcENSt11_Miter_baseIT_E13iterator_typeES3_(i8** %__it) #7 {
  %1 = alloca i8**, align 8
  store i8** %__it, i8*** %1, align 8
  %2 = load i8*** %1, align 8
  %3 = call i8** @_ZNSt10_Iter_baseIPPcLb0EE7_S_baseES1_(i8** %2)
  ret i8** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8** @_ZNSt10_Iter_baseIPPcLb0EE7_S_baseES1_(i8** %__it) #2 align 2 {
  %1 = alloca i8**, align 8
  store i8** %__it, i8*** %1, align 8
  %2 = load i8*** %1, align 8
  ret i8** %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_(i8** %__first, i8** %__last, i8** %__result) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %__simple = alloca i8, align 1
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i8*** %1, align 8
  %5 = load i8*** %2, align 8
  %6 = load i8*** %3, align 8
  %7 = call i8** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_(i8** %4, i8** %5, i8** %6)
  ret i8** %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i8** @_ZSt12__niter_baseIPPcENSt11_Niter_baseIT_E13iterator_typeES3_(i8** %__it) #8 {
  %1 = alloca i8**, align 8
  store i8** %__it, i8*** %1, align 8
  %2 = load i8*** %1, align 8
  %3 = call i8** @_ZNSt10_Iter_baseIPPcLb0EE7_S_baseES1_(i8** %2)
  ret i8** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_(i8** %__first, i8** %__last, i8** %__result) #2 align 2 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %_Num = alloca i64, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  %4 = load i8*** %2, align 8
  %5 = load i8*** %1, align 8
  %6 = ptrtoint i8** %4 to i64
  %7 = ptrtoint i8** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load i8*** %3, align 8
  %14 = bitcast i8** %13 to i8*
  %15 = load i8*** %1, align 8
  %16 = bitcast i8** %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load i8*** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds i8** %20, i64 %21
  ret i8** %22
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: uwtable
define linkonce_odr i8** @_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %5) #1
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i8**
  ret i8** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #11

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv(%"class.std::vector"* %this) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = call %"class.std::allocator"* @_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPcEE8max_sizeERKS2_(%"class.std::allocator"* %4)
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #10

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__a, i64** %2, align 8
  store i64* %__b, i64** %3, align 8
  %4 = load i64** %2, align 8
  %5 = load i64* %4, align 8
  %6 = load i64** %3, align 8
  %7 = load i64* %6, align 8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load i64** %3, align 8
  store i64* %10, i64** %1
  br label %13

; <label>:11                                      ; preds = %0
  %12 = load i64** %2, align 8
  store i64* %12, i64** %1
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = load i64** %1
  ret i64* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPcEE8max_sizeERKS2_(%"class.std::allocator"* %__a) #2 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_(i8** %__first, i8** %__last, i8** %__result) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  %4 = load i8*** %1, align 8
  %5 = call i8** @_ZSt12__niter_baseIPPcENSt11_Niter_baseIT_E13iterator_typeES3_(i8** %4)
  %6 = load i8*** %2, align 8
  %7 = call i8** @_ZSt12__niter_baseIPPcENSt11_Niter_baseIT_E13iterator_typeES3_(i8** %6)
  %8 = load i8*** %3, align 8
  %9 = call i8** @_ZSt12__niter_baseIPPcENSt11_Niter_baseIT_E13iterator_typeES3_(i8** %8)
  %10 = call i8** @_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_(i8** %5, i8** %7, i8** %9)
  ret i8** %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i8** @_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_(i8** %__first, i8** %__last, i8** %__result) #7 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %__simple = alloca i8, align 1
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i8*** %1, align 8
  %5 = load i8*** %2, align 8
  %6 = load i8*** %3, align 8
  %7 = call i8** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_(i8** %4, i8** %5, i8** %6)
  ret i8** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_(i8** %__first, i8** %__last, i8** %__result) #2 align 2 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %_Num = alloca i64, align 8
  store i8** %__first, i8*** %1, align 8
  store i8** %__last, i8*** %2, align 8
  store i8** %__result, i8*** %3, align 8
  %4 = load i8*** %2, align 8
  %5 = load i8*** %1, align 8
  %6 = ptrtoint i8** %4 to i64
  %7 = ptrtoint i8** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load i8*** %3, align 8
  %14 = load i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i8** %13, i64 %15
  %17 = bitcast i8** %16 to i8*
  %18 = load i8*** %1, align 8
  %19 = bitcast i8** %18 to i8*
  %20 = load i64* %_Num, align 8
  %21 = mul i64 8, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load i8*** %3, align 8
  %24 = load i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i8** %23, i64 %25
  ret i8** %26
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPcE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* %this, i8** %__p, i8** %__val) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store i8** %__p, i8*** %2, align 8
  store i8** %__val, i8*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator"** %1
  %5 = load i8*** %2, align 8
  %6 = bitcast i8** %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to i8**
  %10 = load i8*** %3, align 8
  %11 = load i8** %10, align 8
  store i8* %11, i8** %9, align 8
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = phi i8** [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPcSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIPcEC2Ev(%"class.std::allocator"* %3) #1
  %4 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %2, i32 0, i32 0
  store i8** null, i8*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %2, i32 0, i32 1
  store i8** null, i8*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<char *, std::allocator<char *> >::_Vector_impl"* %2, i32 0, i32 2
  store i8** null, i8*** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPcEC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIPcEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPcEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN8BST_TREEIPcE6insertEP14_BST_TREE_NODEIS0_ES0_PFiS0_S0_E(%class.BST_TREE* %this, %class._BST_TREE_NODE* %nodel, i8* %val, i32 (i8*, i8*)* %_P_) #5 align 2 {
  %1 = alloca %class.BST_TREE*, align 8
  %2 = alloca %class._BST_TREE_NODE*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32 (i8*, i8*)*, align 8
  %nodea = alloca %class._BST_TREE_NODE*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  %nodea1 = alloca %class._BST_TREE_NODE*, align 8
  store %class.BST_TREE* %this, %class.BST_TREE** %1, align 8
  store %class._BST_TREE_NODE* %nodel, %class._BST_TREE_NODE** %2, align 8
  store i8* %val, i8** %3, align 8
  store i32 (i8*, i8*)* %_P_, i32 (i8*, i8*)** %4, align 8
  %7 = load %class.BST_TREE** %1
  %8 = load i32 (i8*, i8*)** %4, align 8
  %9 = load i8** %3, align 8
  %10 = load %class._BST_TREE_NODE** %2, align 8
  %11 = call i8* @_ZN14_BST_TREE_NODEIPcE9get_valueEv(%class._BST_TREE_NODE* %10)
  %12 = call i32 %8(i8* %9, i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

; <label>:14                                      ; preds = %0
  %15 = load %class._BST_TREE_NODE** %2, align 8
  %16 = call i32 @_ZN14_BST_TREE_NODEIPcE13is_right_nullEv(%class._BST_TREE_NODE* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

; <label>:18                                      ; preds = %14
  %19 = call noalias i8* @_Znwm(i64 24) #15
  %20 = bitcast i8* %19 to %class._BST_TREE_NODE*
  invoke void @_ZN14_BST_TREE_NODEIPcEC2Ev(%class._BST_TREE_NODE* %20)
          to label %21 unwind label %26

; <label>:21                                      ; preds = %18
  store %class._BST_TREE_NODE* %20, %class._BST_TREE_NODE** %nodea, align 8
  %22 = load %class._BST_TREE_NODE** %nodea, align 8
  %23 = load i8** %3, align 8
  call void @_ZN14_BST_TREE_NODEIPcE9set_valueES0_(%class._BST_TREE_NODE* %22, i8* %23)
  %24 = load %class._BST_TREE_NODE** %2, align 8
  %25 = load %class._BST_TREE_NODE** %nodea, align 8
  call void @_ZN14_BST_TREE_NODEIPcE8set_rigtEPS1_(%class._BST_TREE_NODE* %24, %class._BST_TREE_NODE* %25)
  br label %35

; <label>:26                                      ; preds = %18
  %27 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %5
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %6
  call void @_ZdlPv(i8* %19) #16
  br label %59

; <label>:30                                      ; preds = %14
  %31 = load %class._BST_TREE_NODE** %2, align 8
  %32 = call %class._BST_TREE_NODE* @_ZN14_BST_TREE_NODEIPcE8get_rigtEv(%class._BST_TREE_NODE* %31)
  %33 = load i8** %3, align 8
  %34 = load i32 (i8*, i8*)** %4, align 8
  call void @_ZN8BST_TREEIPcE6insertEP14_BST_TREE_NODEIS0_ES0_PFiS0_S0_E(%class.BST_TREE* %7, %class._BST_TREE_NODE* %32, i8* %33, i32 (i8*, i8*)* %34)
  br label %35

; <label>:35                                      ; preds = %30, %21
  br label %58

; <label>:36                                      ; preds = %0
  %37 = load %class._BST_TREE_NODE** %2, align 8
  %38 = call i32 @_ZN14_BST_TREE_NODEIPcE12is_left_nullEv(%class._BST_TREE_NODE* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

; <label>:40                                      ; preds = %36
  %41 = call noalias i8* @_Znwm(i64 24) #15
  %42 = bitcast i8* %41 to %class._BST_TREE_NODE*
  invoke void @_ZN14_BST_TREE_NODEIPcEC2Ev(%class._BST_TREE_NODE* %42)
          to label %43 unwind label %48

; <label>:43                                      ; preds = %40
  store %class._BST_TREE_NODE* %42, %class._BST_TREE_NODE** %nodea1, align 8
  %44 = load %class._BST_TREE_NODE** %nodea1, align 8
  %45 = load i8** %3, align 8
  call void @_ZN14_BST_TREE_NODEIPcE9set_valueES0_(%class._BST_TREE_NODE* %44, i8* %45)
  %46 = load %class._BST_TREE_NODE** %2, align 8
  %47 = load %class._BST_TREE_NODE** %nodea1, align 8
  call void @_ZN14_BST_TREE_NODEIPcE8set_leftEPS1_(%class._BST_TREE_NODE* %46, %class._BST_TREE_NODE* %47)
  br label %57

; <label>:48                                      ; preds = %40
  %49 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %5
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %6
  call void @_ZdlPv(i8* %41) #16
  br label %59

; <label>:52                                      ; preds = %36
  %53 = load %class._BST_TREE_NODE** %2, align 8
  %54 = call %class._BST_TREE_NODE* @_ZN14_BST_TREE_NODEIPcE8get_leftEv(%class._BST_TREE_NODE* %53)
  %55 = load i8** %3, align 8
  %56 = load i32 (i8*, i8*)** %4, align 8
  call void @_ZN8BST_TREEIPcE6insertEP14_BST_TREE_NODEIS0_ES0_PFiS0_S0_E(%class.BST_TREE* %7, %class._BST_TREE_NODE* %54, i8* %55, i32 (i8*, i8*)* %56)
  br label %57

; <label>:57                                      ; preds = %52, %43
  br label %58

; <label>:58                                      ; preds = %57, %35
  ret void

; <label>:59                                      ; preds = %48, %26
  %60 = load i8** %5
  %61 = load i32* %6
  %62 = insertvalue { i8*, i32 } undef, i8* %60, 0
  %63 = insertvalue { i8*, i32 } %62, i32 %61, 1
  resume { i8*, i32 } %63
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN14_BST_TREE_NODEIPcEC2Ev(%class._BST_TREE_NODE* %this) unnamed_addr #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  %2 = load %class._BST_TREE_NODE** %1
  %3 = getelementptr inbounds %class._BST_TREE_NODE* %2, i32 0, i32 1
  store %class._BST_TREE_NODE* null, %class._BST_TREE_NODE** %3, align 8
  %4 = getelementptr inbounds %class._BST_TREE_NODE* %2, i32 0, i32 2
  store %class._BST_TREE_NODE* null, %class._BST_TREE_NODE** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN14_BST_TREE_NODEIPcE9set_valueES0_(%class._BST_TREE_NODE* %this, i8* %val) #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  %2 = alloca i8*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  store i8* %val, i8** %2, align 8
  %3 = load %class._BST_TREE_NODE** %1
  %4 = load i8** %2, align 8
  %5 = getelementptr inbounds %class._BST_TREE_NODE* %3, i32 0, i32 0
  store i8* %4, i8** %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN14_BST_TREE_NODEIPcE8set_rigtEPS1_(%class._BST_TREE_NODE* %this, %class._BST_TREE_NODE* %rr) #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  %2 = alloca %class._BST_TREE_NODE*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  store %class._BST_TREE_NODE* %rr, %class._BST_TREE_NODE** %2, align 8
  %3 = load %class._BST_TREE_NODE** %1
  %4 = load %class._BST_TREE_NODE** %2, align 8
  %5 = getelementptr inbounds %class._BST_TREE_NODE* %3, i32 0, i32 2
  store %class._BST_TREE_NODE* %4, %class._BST_TREE_NODE** %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN14_BST_TREE_NODEIPcE8set_leftEPS1_(%class._BST_TREE_NODE* %this, %class._BST_TREE_NODE* %ll) #2 align 2 {
  %1 = alloca %class._BST_TREE_NODE*, align 8
  %2 = alloca %class._BST_TREE_NODE*, align 8
  store %class._BST_TREE_NODE* %this, %class._BST_TREE_NODE** %1, align 8
  store %class._BST_TREE_NODE* %ll, %class._BST_TREE_NODE** %2, align 8
  %3 = load %class._BST_TREE_NODE** %1
  %4 = load %class._BST_TREE_NODE** %2, align 8
  %5 = getelementptr inbounds %class._BST_TREE_NODE* %3, i32 0, i32 1
  store %class._BST_TREE_NODE* %4, %class._BST_TREE_NODE** %5, align 8
  ret void
}

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind readnone }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
