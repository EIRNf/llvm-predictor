; ModuleID = 'hello_world.bc'
source_filename = "hello_world.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"struct.std::__1::nullptr_t" = type { i8* }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.0" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::__non_trivial_if" = type { i8 }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], %struct.anon }
%struct.anon = type { i8 }
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }

@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0, i8* %1) #1 {
  %3 = alloca %"class.std::__1::basic_ostream"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %0, %"class.std::__1::basic_ostream"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %7) #7
  %9 = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %5, i8* %6, i64 %8)
  ret %"class.std::__1::basic_ostream"* %9
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0, i8* %1, i64 %2) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__1::basic_ostream"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %11 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %0, %"class.std::__1::basic_ostream"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %13 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* %7, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %12)
          to label %14 unwind label %84

14:                                               ; preds = %3
  %15 = invoke zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv(%"class.std::__1::basic_ostream<char>::sentry"* %7)
          to label %16 unwind label %88

16:                                               ; preds = %14
  br i1 %15, label %17, label %94

17:                                               ; preds = %16
  %18 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %19 = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %11, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %18) #7
  %20 = load i8*, i8** %5, align 8
  %21 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %22 = bitcast %"class.std::__1::basic_ostream"* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %"class.std::__1::basic_ostream"* %21 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  %29 = bitcast i8* %28 to %"class.std::__1::ios_base"*
  %30 = invoke i32 @_ZNKSt3__18ios_base5flagsEv(%"class.std::__1::ios_base"* %29)
          to label %31 unwind label %88

31:                                               ; preds = %17
  %32 = and i32 %30, 176
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  br label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i8* [ %37, %34 ], [ %39, %38 ]
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %46 = bitcast %"class.std::__1::basic_ostream"* %45 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr i8, i8* %47, i64 -24
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = bitcast %"class.std::__1::basic_ostream"* %45 to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  %53 = bitcast i8* %52 to %"class.std::__1::ios_base"*
  %54 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %55 = bitcast %"class.std::__1::basic_ostream"* %54 to i8**
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr i8, i8* %56, i64 -24
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = bitcast %"class.std::__1::basic_ostream"* %54 to i8*
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  %62 = bitcast i8* %61 to %"class.std::__1::basic_ios"*
  %63 = invoke signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv(%"class.std::__1::basic_ios"* %62)
          to label %64 unwind label %88

64:                                               ; preds = %40
  %65 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %11, i32 0, i32 0
  %66 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %65, align 8
  %67 = ptrtoint %"class.std::__1::basic_streambuf"* %66 to i64
  %68 = invoke i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %67, i8* %20, i8* %41, i8* %44, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %53, i8 signext %63)
          to label %69 unwind label %88

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %10, i32 0, i32 0
  %71 = inttoptr i64 %68 to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %71, %"class.std::__1::basic_streambuf"** %70, align 8
  %72 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %10) #7
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %75 = bitcast %"class.std::__1::basic_ostream"* %74 to i8**
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr i8, i8* %76, i64 -24
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = bitcast %"class.std::__1::basic_ostream"* %74 to i8*
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  %82 = bitcast i8* %81 to %"class.std::__1::basic_ios"*
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj(%"class.std::__1::basic_ios"* %82, i32 5)
          to label %83 unwind label %88

83:                                               ; preds = %73
  br label %93

84:                                               ; preds = %94, %3
  %85 = landingpad { i8*, i32 }
          catch i8* null
  %86 = extractvalue { i8*, i32 } %85, 0
  store i8* %86, i8** %8, align 8
  %87 = extractvalue { i8*, i32 } %85, 1
  store i32 %87, i32* %9, align 4
  br label %98

88:                                               ; preds = %73, %64, %40, %17, %14
  %89 = landingpad { i8*, i32 }
          catch i8* null
  %90 = extractvalue { i8*, i32 } %89, 0
  store i8* %90, i8** %8, align 8
  %91 = extractvalue { i8*, i32 } %89, 1
  store i32 %91, i32* %9, align 4
  %92 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %7)
          to label %97 unwind label %123

93:                                               ; preds = %83, %69
  br label %94

94:                                               ; preds = %93, %16
  %95 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %7)
          to label %96 unwind label %84

96:                                               ; preds = %94
  br label %111

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %84
  %99 = load i8*, i8** %8, align 8
  %100 = call i8* @__cxa_begin_catch(i8* %99) #7
  %101 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %102 = bitcast %"class.std::__1::basic_ostream"* %101 to i8**
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr i8, i8* %103, i64 -24
  %105 = bitcast i8* %104 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = bitcast %"class.std::__1::basic_ostream"* %101 to i8*
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  %109 = bitcast i8* %108 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %109)
          to label %110 unwind label %113

110:                                              ; preds = %98
  call void @__cxa_end_catch()
  br label %111

111:                                              ; preds = %110, %96
  %112 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  ret %"class.std::__1::basic_ostream"* %112

113:                                              ; preds = %98
  %114 = landingpad { i8*, i32 }
          cleanup
  %115 = extractvalue { i8*, i32 } %114, 0
  store i8* %115, i8** %8, align 8
  %116 = extractvalue { i8*, i32 } %114, 1
  store i32 %116, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %117 unwind label %123

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = insertvalue { i8*, i32 } undef, i8* %119, 0
  %122 = insertvalue { i8*, i32 } %121, i32 %120, 1
  resume { i8*, i32 } %122

123:                                              ; preds = %113, %88
  %124 = landingpad { i8*, i32 }
          catch i8* null
  %125 = extractvalue { i8*, i32 } %124, 0
  call void @__clang_call_terminate(i8* %125) #8
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %0) #2 align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* %3) #7
  ret i64 %4
}

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* returned, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv(%"class.std::__1::basic_ostream<char>::sentry"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::basic_ostream<char>::sentry"*, align 8
  store %"class.std::__1::basic_ostream<char>::sentry"* %0, %"class.std::__1::basic_ostream<char>::sentry"** %2, align 8
  %3 = load %"class.std::__1::basic_ostream<char>::sentry"*, %"class.std::__1::basic_ostream<char>::sentry"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_ostream<char>::sentry", %"class.std::__1::basic_ostream<char>::sentry"* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %0, i8* %1, i8* %2, i8* %3, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %4, i8 signext %5) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %8 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %"class.std::__1::ios_base"*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %"struct.std::__1::nullptr_t", align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %"struct.std::__1::nullptr_t", align 8
  %19 = alloca %"class.std::__1::basic_string", align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %"struct.std::__1::nullptr_t", align 8
  %23 = alloca i32, align 4
  %24 = alloca %"struct.std::__1::nullptr_t", align 8
  %25 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %8, i32 0, i32 0
  %26 = inttoptr i64 %0 to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %26, %"class.std::__1::basic_streambuf"** %25, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %"class.std::__1::ios_base"* %4, %"class.std::__1::ios_base"** %12, align 8
  store i8 %5, i8* %13, align 1
  %27 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %8, i32 0, i32 0
  %28 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %27, align 8
  %29 = call i64 @_ZNSt3__1L15__get_nullptr_tEv()
  %30 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %14, i32 0, i32 0
  %31 = inttoptr i64 %29 to i8*
  store i8* %31, i8** %30, align 8
  %32 = call %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %14)
  %33 = icmp eq %"class.std::__1::basic_streambuf"* %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = bitcast %"class.std::__1::ostreambuf_iterator"* %7 to i8*
  %36 = bitcast %"class.std::__1::ostreambuf_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  br label %144

37:                                               ; preds = %6
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  store i64 %42, i64* %15, align 8
  %43 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %12, align 8
  %44 = call i64 @_ZNKSt3__18ios_base5widthEv(%"class.std::__1::ios_base"* %43)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %16, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %16, align 8
  br label %53

52:                                               ; preds = %37
  store i64 0, i64* %16, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  store i64 %58, i64* %17, align 8
  %59 = load i64, i64* %17, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %8, i32 0, i32 0
  %63 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %17, align 8
  %66 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %63, i8* %64, i64 %65)
  %67 = load i64, i64* %17, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = call i64 @_ZNSt3__1L15__get_nullptr_tEv()
  %71 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %18, i32 0, i32 0
  %72 = inttoptr i64 %70 to i8*
  store i8* %72, i8** %71, align 8
  %73 = call %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %18)
  %74 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %8, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %73, %"class.std::__1::basic_streambuf"** %74, align 8
  %75 = bitcast %"class.std::__1::ostreambuf_iterator"* %7 to i8*
  %76 = bitcast %"class.std::__1::ostreambuf_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 8, i1 false)
  br label %144

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i64, i64* %16, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %78
  %82 = load i64, i64* %16, align 8
  %83 = load i8, i8* %13, align 1
  %84 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc(%"class.std::__1::basic_string"* %19, i64 %82, i8 signext %83)
  %85 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %8, i32 0, i32 0
  %86 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %85, align 8
  %87 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %19) #7
  %88 = load i64, i64* %16, align 8
  %89 = invoke i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %86, i8* %87, i64 %88)
          to label %90 unwind label %103

90:                                               ; preds = %81
  %91 = load i64, i64* %16, align 8
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = invoke i64 @_ZNSt3__1L15__get_nullptr_tEv()
          to label %95 unwind label %103

95:                                               ; preds = %93
  %96 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %22, i32 0, i32 0
  %97 = inttoptr i64 %94 to i8*
  store i8* %97, i8** %96, align 8
  %98 = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %22)
          to label %99 unwind label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %8, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %98, %"class.std::__1::basic_streambuf"** %100, align 8
  %101 = bitcast %"class.std::__1::ostreambuf_iterator"* %7 to i8*
  %102 = bitcast %"class.std::__1::ostreambuf_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 8, i1 false)
  store i32 1, i32* %23, align 4
  br label %109

103:                                              ; preds = %95, %93, %81
  %104 = landingpad { i8*, i32 }
          cleanup
  %105 = extractvalue { i8*, i32 } %104, 0
  store i8* %105, i8** %20, align 8
  %106 = extractvalue { i8*, i32 } %104, 1
  store i32 %106, i32* %21, align 4
  %107 = invoke %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %19)
          to label %113 unwind label %153

108:                                              ; preds = %90
  store i32 0, i32* %23, align 4
  br label %109

109:                                              ; preds = %108, %99
  %110 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %19)
  %111 = load i32, i32* %23, align 4
  switch i32 %111, label %156 [
    i32 0, label %112
    i32 1, label %144
  ]

112:                                              ; preds = %109
  br label %114

113:                                              ; preds = %103
  br label %148

114:                                              ; preds = %112, %78
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  store i64 %119, i64* %17, align 8
  %120 = load i64, i64* %17, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %114
  %123 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %8, i32 0, i32 0
  %124 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %123, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i64, i64* %17, align 8
  %127 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %124, i8* %125, i64 %126)
  %128 = load i64, i64* %17, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = call i64 @_ZNSt3__1L15__get_nullptr_tEv()
  %132 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %24, i32 0, i32 0
  %133 = inttoptr i64 %131 to i8*
  store i8* %133, i8** %132, align 8
  %134 = call %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %24)
  %135 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %8, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %134, %"class.std::__1::basic_streambuf"** %135, align 8
  %136 = bitcast %"class.std::__1::ostreambuf_iterator"* %7 to i8*
  %137 = bitcast %"class.std::__1::ostreambuf_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %136, i8* align 8 %137, i64 8, i1 false)
  br label %144

138:                                              ; preds = %122
  br label %139

139:                                              ; preds = %138, %114
  %140 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %12, align 8
  %141 = call i64 @_ZNSt3__18ios_base5widthEl(%"class.std::__1::ios_base"* %140, i64 0)
  %142 = bitcast %"class.std::__1::ostreambuf_iterator"* %7 to i8*
  %143 = bitcast %"class.std::__1::ostreambuf_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 8, i1 false)
  br label %144

144:                                              ; preds = %139, %130, %109, %69, %34
  %145 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %7, i32 0, i32 0
  %146 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %145, align 8
  %147 = ptrtoint %"class.std::__1::basic_streambuf"* %146 to i64
  ret i64 %147

148:                                              ; preds = %113
  %149 = load i8*, i8** %20, align 8
  %150 = load i32, i32* %21, align 4
  %151 = insertvalue { i8*, i32 } undef, i8* %149, 0
  %152 = insertvalue { i8*, i32 } %151, i32 %150, 1
  resume { i8*, i32 } %152

153:                                              ; preds = %103
  %154 = landingpad { i8*, i32 }
          catch i8* null
  %155 = extractvalue { i8*, i32 } %154, 0
  call void @__clang_call_terminate(i8* %155) #8
  unreachable

156:                                              ; preds = %109
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %0, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
  %3 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %4 = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %0, %"class.std::__1::ostreambuf_iterator"** %3, align 8
  store %"class.std::__1::basic_ostream"* %1, %"class.std::__1::basic_ostream"** %4, align 8
  %5 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %3, align 8
  %6 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %7 = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %5, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %6) #7
  ret %"class.std::__1::ostreambuf_iterator"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_ZNKSt3__18ios_base5flagsEv(%"class.std::__1::ios_base"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %0, %"class.std::__1::ios_base"** %2, align 8
  %3 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv(%"class.std::__1::basic_ios"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %0, %"class.std::__1::basic_ios"** %2, align 8
  %3 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %2, align 8
  %4 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #7
  %5 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %3, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %4, i32 %6) #7
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc(%"class.std::__1::basic_ios"* %3, i8 signext 32)
  %10 = sext i8 %9 to i32
  %11 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %3, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %3, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %0) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %3 = alloca %"struct.std::__1::nullptr_t", align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %"class.std::__1::ostreambuf_iterator"* %0, %"class.std::__1::ostreambuf_iterator"** %2, align 8
  %6 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %2, align 8
  %7 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %6, i32 0, i32 0
  %8 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %7, align 8
  %9 = invoke i64 @_ZNSt3__1L15__get_nullptr_tEv()
          to label %10 unwind label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %3, i32 0, i32 0
  %12 = inttoptr i64 %9 to i8*
  store i8* %12, i8** %11, align 8
  %13 = call %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %3)
  %14 = icmp eq %"class.std::__1::basic_streambuf"* %8, %13
  ret i1 %14

15:                                               ; preds = %1
  %16 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %4, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  call void @__cxa_call_unexpected(i8* %20) #9
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj(%"class.std::__1::basic_ios"* %0, i32 %1) #1 align 2 {
  %3 = alloca %"class.std::__1::basic_ios"*, align 8
  %4 = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %0, %"class.std::__1::basic_ios"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %3, align 8
  %6 = bitcast %"class.std::__1::basic_ios"* %5 to %"class.std::__1::ios_base"*
  %7 = load i32, i32* %4, align 4
  call void @_ZNSt3__18ios_base8setstateEj(%"class.std::__1::ios_base"* %6, i32 %7)
  ret void
}

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* returned) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #7
  call void @_ZSt9terminatev() #8
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #3

declare void @__cxa_end_catch()

; Function Attrs: noinline optnone ssp uwtable
define internal i64 @_ZNSt3__1L15__get_nullptr_tEv() #1 {
  %1 = alloca %"struct.std::__1::nullptr_t", align 8
  %2 = call %"struct.std::__1::nullptr_t"* @_ZNSt3__19nullptr_tC1EMNS0_5__natEi(%"struct.std::__1::nullptr_t"* %1, i64 -1)
  %3 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %1, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = ptrtoint i8* %4 to i64
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"class.std::__1::basic_streambuf"* @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv(%"struct.std::__1::nullptr_t"* %0) #2 align 2 {
  %2 = alloca %"struct.std::__1::nullptr_t"*, align 8
  store %"struct.std::__1::nullptr_t"* %0, %"struct.std::__1::nullptr_t"** %2, align 8
  %3 = load %"struct.std::__1::nullptr_t"*, %"struct.std::__1::nullptr_t"** %2, align 8
  ret %"class.std::__1::basic_streambuf"* null
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__18ios_base5widthEv(%"class.std::__1::ios_base"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %0, %"class.std::__1::ios_base"** %2, align 8
  %3 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline optnone ssp uwtable
define internal i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %0, i8* %1, i64 %2) #1 align 2 {
  %4 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::basic_streambuf"* %0, %"class.std::__1::basic_streambuf"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = bitcast %"class.std::__1::basic_streambuf"* %7 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %11 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %10, align 8
  %12 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %11, i64 12
  %13 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %12, align 8
  %14 = call i64 %13(%"class.std::__1::basic_streambuf"* %7, i8* %8, i64 %9)
  ret i64 %14
}

; Function Attrs: noinline optnone ssp uwtable
define internal %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc(%"class.std::__1::basic_string"* returned %0, i64 %1, i8 signext %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::basic_string"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i8, i8* %6, align 1
  %10 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc(%"class.std::__1::basic_string"* %7, i64 %8, i8 signext %9)
  ret %"class.std::__1::basic_string"* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %3) #7
  %5 = call i8* @_ZNSt3__1L12__to_addressIKcEEPT_S3_(i8* %4) #7
  ret i8* %5
}

declare %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned) unnamed_addr #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__18ios_base5widthEl(%"class.std::__1::ios_base"* %0, i64 %1) #2 align 2 {
  %3 = alloca %"class.std::__1::ios_base"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %"class.std::__1::ios_base"* %0, %"class.std::__1::ios_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %6, i32 0, i32 3
  store i64 %9, i64* %10, align 8
  %11 = load i64, i64* %5, align 8
  ret i64 %11
}

; Function Attrs: noinline optnone ssp uwtable
define internal %"struct.std::__1::nullptr_t"* @_ZNSt3__19nullptr_tC1EMNS0_5__natEi(%"struct.std::__1::nullptr_t"* returned %0, i64 %1) unnamed_addr #1 align 2 {
  %3 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::__1::nullptr_t"* %0, %"struct.std::__1::nullptr_t"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::__1::nullptr_t"*, %"struct.std::__1::nullptr_t"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %"struct.std::__1::nullptr_t"* @_ZNSt3__19nullptr_tC2EMNS0_5__natEi(%"struct.std::__1::nullptr_t"* %5, i64 %6)
  ret %"struct.std::__1::nullptr_t"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"struct.std::__1::nullptr_t"* @_ZNSt3__19nullptr_tC2EMNS0_5__natEi(%"struct.std::__1::nullptr_t"* returned %0, i64 %1) unnamed_addr #2 align 2 {
  %3 = alloca %"struct.std::__1::nullptr_t"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::__1::nullptr_t"* %0, %"struct.std::__1::nullptr_t"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::__1::nullptr_t"*, %"struct.std::__1::nullptr_t"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::nullptr_t", %"struct.std::__1::nullptr_t"* %5, i32 0, i32 0
  store i8* null, i8** %6, align 8
  ret %"struct.std::__1::nullptr_t"* %5
}

; Function Attrs: noinline optnone ssp uwtable
define internal %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc(%"class.std::__1::basic_string"* returned %0, i64 %1, i8 signext %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::basic_string"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  %8 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %4, align 8
  %10 = bitcast %"class.std::__1::basic_string"* %9 to %"class.std::__1::__basic_string_common"*
  %11 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %9, i32 0, i32 0
  %12 = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %11, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %7, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %8)
  %13 = load i64, i64* %5, align 8
  %14 = load i8, i8* %6, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %9, i64 %13, i8 signext %14)
  ret %"class.std::__1::basic_string"* %9
}

; Function Attrs: noinline optnone ssp uwtable
define internal %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %0, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %5 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %6 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %4, align 8
  store %"struct.std::__1::__default_init_tag"* %1, %"struct.std::__1::__default_init_tag"** %5, align 8
  store %"struct.std::__1::__default_init_tag"* %2, %"struct.std::__1::__default_init_tag"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %4, align 8
  %8 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %5, align 8
  %9 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %6, align 8
  %10 = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %7, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %8, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %9)
  ret %"class.std::__1::__compressed_pair"* %7
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #3

; Function Attrs: noinline optnone ssp uwtable
define internal %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %0, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %5 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %6 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  %8 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %4, align 8
  store %"struct.std::__1::__default_init_tag"* %1, %"struct.std::__1::__default_init_tag"** %5, align 8
  store %"struct.std::__1::__default_init_tag"* %2, %"struct.std::__1::__default_init_tag"** %6, align 8
  %9 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %4, align 8
  %10 = bitcast %"class.std::__1::__compressed_pair"* %9 to %"struct.std::__1::__compressed_pair_elem"*
  %11 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %5, align 8
  %12 = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %11) #7
  %13 = call %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* %10)
  %14 = bitcast %"class.std::__1::__compressed_pair"* %9 to %"struct.std::__1::__compressed_pair_elem.0"*
  %15 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %6, align 8
  %16 = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %15) #7
  %17 = call %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* %14)
  ret %"class.std::__1::__compressed_pair"* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %0) #2 {
  %2 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"struct.std::__1::__default_init_tag"* %0, %"struct.std::__1::__default_init_tag"** %2, align 8
  %3 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %2, align 8
  ret %"struct.std::__1::__default_init_tag"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* returned %0) unnamed_addr #2 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %0, %"struct.std::__1::__compressed_pair_elem"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %4, i32 0, i32 0
  ret %"struct.std::__1::__compressed_pair_elem"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* returned %0) unnamed_addr #2 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %0, %"struct.std::__1::__compressed_pair_elem.0"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %3, align 8
  %5 = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %4 to %"class.std::__1::allocator"*
  %6 = call %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %5) #7
  ret %"struct.std::__1::__compressed_pair_elem.0"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* returned %0) unnamed_addr #2 align 2 {
  %2 = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %2, align 8
  %3 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %2, align 8
  %4 = bitcast %"class.std::__1::allocator"* %3 to %"struct.std::__1::__non_trivial_if"*
  %5 = call %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev(%"struct.std::__1::__non_trivial_if"* %4) #7
  ret %"class.std::__1::allocator"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev(%"struct.std::__1::__non_trivial_if"* returned %0) unnamed_addr #2 align 2 {
  %2 = alloca %"struct.std::__1::__non_trivial_if"*, align 8
  store %"struct.std::__1::__non_trivial_if"* %0, %"struct.std::__1::__non_trivial_if"** %2, align 8
  %3 = load %"struct.std::__1::__non_trivial_if"*, %"struct.std::__1::__non_trivial_if"** %2, align 8
  ret %"struct.std::__1::__non_trivial_if"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L12__to_addressIKcEEPT_S3_(i8* %0) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %3) #7
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %3) #7
  br label %9

7:                                                ; preds = %1
  %8 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %3) #7
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i8* [ %6, %5 ], [ %8, %7 ]
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i32 0, i32 0
  %5 = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #7
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i32 0, i32 0
  %7 = bitcast %union.anon* %6 to %"struct.std::__1::basic_string<char>::__short"*
  %8 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i64
  %12 = and i64 %11, 128
  %13 = icmp ne i64 %12, 0
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i32 0, i32 0
  %5 = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #7
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i32 0, i32 0
  %7 = bitcast %union.anon* %6 to %"struct.std::__1::basic_string<char>::__long"*
  %8 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %2, align 8
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i32 0, i32 0
  %5 = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %4) #7
  %6 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %5, i32 0, i32 0
  %7 = bitcast %union.anon* %6 to %"struct.std::__1::basic_string<char>::__short"*
  %8 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %7, i32 0, i32 0
  %9 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 0
  %10 = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* nonnull align 1 dereferenceable(1) %9) #7
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair"* %3 to %"struct.std::__1::__compressed_pair_elem"*
  %5 = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %4) #7
  ret %"struct.std::__1::basic_string<char>::__rep"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #2 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %0, %"struct.std::__1::__compressed_pair_elem"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %3, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* nonnull align 1 dereferenceable(1) %0) #2 align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %3) #7
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %0) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %0, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %4 = alloca %"class.std::__1::basic_ostream"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::__1::ostreambuf_iterator"* %0, %"class.std::__1::ostreambuf_iterator"** %3, align 8
  store %"class.std::__1::basic_ostream"* %1, %"class.std::__1::basic_ostream"** %4, align 8
  %7 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %3, align 8
  %8 = bitcast %"class.std::__1::ostreambuf_iterator"* %7 to %"struct.std::__1::iterator"*
  %9 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %7, i32 0, i32 0
  %10 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %11 = bitcast %"class.std::__1::basic_ostream"* %10 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr i8, i8* %12, i64 -24
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = bitcast %"class.std::__1::basic_ostream"* %10 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  %18 = bitcast i8* %17 to %"class.std::__1::basic_ios"*
  %19 = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv(%"class.std::__1::basic_ios"* %18)
          to label %20 unwind label %21

20:                                               ; preds = %2
  store %"class.std::__1::basic_streambuf"* %19, %"class.std::__1::basic_streambuf"** %9, align 8
  ret %"class.std::__1::ostreambuf_iterator"* %7

21:                                               ; preds = %2
  %22 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %5, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  call void @__cxa_call_unexpected(i8* %26) #9
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define internal %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv(%"class.std::__1::basic_ios"* %0) #1 align 2 {
  %2 = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %0, %"class.std::__1::basic_ios"** %2, align 8
  %3 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %2, align 8
  %4 = bitcast %"class.std::__1::basic_ios"* %3 to %"class.std::__1::ios_base"*
  %5 = call i8* @_ZNKSt3__18ios_base5rdbufEv(%"class.std::__1::ios_base"* %4)
  %6 = bitcast i8* %5 to %"class.std::__1::basic_streambuf"*
  ret %"class.std::__1::basic_streambuf"* %6
}

declare void @__cxa_call_unexpected(i8*)

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__18ios_base5rdbufEv(%"class.std::__1::ios_base"* %0) #2 align 2 {
  %2 = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %0, %"class.std::__1::ios_base"** %2, align 8
  %3 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %3, i32 0, i32 6
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %0, i32 %1) #2 align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #2 align 2 {
  ret i32 -1
}

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc(%"class.std::__1::basic_ios"* %0, i8 signext %1) #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::basic_ios"*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %"class.std::__1::locale", align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %0, %"class.std::__1::basic_ios"** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %3, align 8
  %9 = bitcast %"class.std::__1::basic_ios"* %8 to %"class.std::__1::ios_base"*
  call void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8 %5, %"class.std::__1::ios_base"* %9)
  %10 = invoke nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %5)
          to label %11 unwind label %16

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = invoke signext i8 @_ZNKSt3__15ctypeIcE5widenEc(%"class.std::__1::ctype"* %10, i8 signext %12)
          to label %14 unwind label %16

14:                                               ; preds = %11
  %15 = call %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %5)
  ret i8 %13

16:                                               ; preds = %11, %2
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %6, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %7, align 4
  %20 = invoke %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %5)
          to label %21 unwind label %27

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

27:                                               ; preds = %16
  %28 = landingpad { i8*, i32 }
          catch i8* null
  %29 = extractvalue { i8*, i32 } %28, 0
  call void @__clang_call_terminate(i8* %29) #8
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define internal nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %0) #1 {
  %2 = alloca %"class.std::__1::locale"*, align 8
  store %"class.std::__1::locale"* %0, %"class.std::__1::locale"** %2, align 8
  %3 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %2, align 8
  %4 = call %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %3, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  %5 = bitcast %"class.std::__1::locale::facet"* %4 to %"class.std::__1::ctype"*
  ret %"class.std::__1::ctype"* %5
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8, %"class.std::__1::ios_base"*) #3

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__15ctypeIcE5widenEc(%"class.std::__1::ctype"* %0, i8 signext %1) #1 align 2 {
  %3 = alloca %"class.std::__1::ctype"*, align 8
  %4 = alloca i8, align 1
  store %"class.std::__1::ctype"* %0, %"class.std::__1::ctype"** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = bitcast %"class.std::__1::ctype"* %5 to i8 (%"class.std::__1::ctype"*, i8)***
  %8 = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %7, align 8
  %9 = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %8, i64 7
  %10 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %9, align 8
  %11 = call signext i8 %10(%"class.std::__1::ctype"* %5, i8 signext %6)
  ret i8 %11
}

declare %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* returned) unnamed_addr #3

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12)) #3

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__18ios_base8setstateEj(%"class.std::__1::ios_base"* %0, i32 %1) #1 align 2 {
  %3 = alloca %"class.std::__1::ios_base"*, align 8
  %4 = alloca i32, align 4
  store %"class.std::__1::ios_base"* %0, %"class.std::__1::ios_base"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %7, %8
  call void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %5, i32 %9)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #3

; Function Attrs: nounwind
declare i64 @strlen(i8*) #6

attributes #0 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 0]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.202)"}
