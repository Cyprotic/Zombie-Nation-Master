Shader "Hidden/PostProcessing/Texture2DLerp" {
	Properties {
	}
	SubShader {
		Pass {
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 50133
			Program "vp" {
				SubProgram "d3d11 hw_tier00 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[26];
						float _RenderViewportScaleFactor;
						vec4 unused_0_2[3];
					};
					in  vec3 in_POSITION0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec2 u_xlat0;
					void main()
					{
					    gl_Position.xy = in_POSITION0.xy;
					    gl_Position.zw = vec2(0.0, 1.0);
					    u_xlat0.xy = in_POSITION0.xy + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, -0.5) + vec2(0.0, 1.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
					    vs_TEXCOORD0.xy = in_POSITION0.xy * vec2(0.5, -0.5) + vec2(0.5, 0.5);
					    return;
					}"
				}
				SubProgram "d3d11 hw_tier01 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[26];
						float _RenderViewportScaleFactor;
						vec4 unused_0_2[3];
					};
					in  vec3 in_POSITION0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec2 u_xlat0;
					void main()
					{
					    gl_Position.xy = in_POSITION0.xy;
					    gl_Position.zw = vec2(0.0, 1.0);
					    u_xlat0.xy = in_POSITION0.xy + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, -0.5) + vec2(0.0, 1.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
					    vs_TEXCOORD0.xy = in_POSITION0.xy * vec2(0.5, -0.5) + vec2(0.5, 0.5);
					    return;
					}"
				}
				SubProgram "d3d11 hw_tier02 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[26];
						float _RenderViewportScaleFactor;
						vec4 unused_0_2[3];
					};
					in  vec3 in_POSITION0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec2 u_xlat0;
					void main()
					{
					    gl_Position.xy = in_POSITION0.xy;
					    gl_Position.zw = vec2(0.0, 1.0);
					    u_xlat0.xy = in_POSITION0.xy + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, -0.5) + vec2(0.0, 1.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
					    vs_TEXCOORD0.xy = in_POSITION0.xy * vec2(0.5, -0.5) + vec2(0.5, 0.5);
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 hw_tier00 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[28];
						float _Interp;
						vec4 unused_0_2;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _To;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_To, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 + (-u_xlat1);
					    SV_Target0 = vec4(_Interp) * u_xlat0 + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 hw_tier01 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[28];
						float _Interp;
						vec4 unused_0_2;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _To;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_To, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 + (-u_xlat1);
					    SV_Target0 = vec4(_Interp) * u_xlat0 + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 hw_tier02 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[28];
						float _Interp;
						vec4 unused_0_2;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _To;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_To, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 + (-u_xlat1);
					    SV_Target0 = vec4(_Interp) * u_xlat0 + u_xlat1;
					    return;
					}"
				}
			}
		}
		Pass {
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 67099
			Program "vp" {
				SubProgram "d3d11 hw_tier00 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[26];
						float _RenderViewportScaleFactor;
						vec4 unused_0_2[3];
					};
					in  vec3 in_POSITION0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec2 u_xlat0;
					void main()
					{
					    gl_Position.xy = in_POSITION0.xy;
					    gl_Position.zw = vec2(0.0, 1.0);
					    u_xlat0.xy = in_POSITION0.xy + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, -0.5) + vec2(0.0, 1.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
					    vs_TEXCOORD0.xy = in_POSITION0.xy * vec2(0.5, -0.5) + vec2(0.5, 0.5);
					    return;
					}"
				}
				SubProgram "d3d11 hw_tier01 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[26];
						float _RenderViewportScaleFactor;
						vec4 unused_0_2[3];
					};
					in  vec3 in_POSITION0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec2 u_xlat0;
					void main()
					{
					    gl_Position.xy = in_POSITION0.xy;
					    gl_Position.zw = vec2(0.0, 1.0);
					    u_xlat0.xy = in_POSITION0.xy + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, -0.5) + vec2(0.0, 1.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
					    vs_TEXCOORD0.xy = in_POSITION0.xy * vec2(0.5, -0.5) + vec2(0.5, 0.5);
					    return;
					}"
				}
				SubProgram "d3d11 hw_tier02 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[26];
						float _RenderViewportScaleFactor;
						vec4 unused_0_2[3];
					};
					in  vec3 in_POSITION0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec2 u_xlat0;
					void main()
					{
					    gl_Position.xy = in_POSITION0.xy;
					    gl_Position.zw = vec2(0.0, 1.0);
					    u_xlat0.xy = in_POSITION0.xy + vec2(1.0, 1.0);
					    u_xlat0.xy = u_xlat0.xy * vec2(0.5, -0.5) + vec2(0.0, 1.0);
					    vs_TEXCOORD1.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
					    vs_TEXCOORD0.xy = in_POSITION0.xy * vec2(0.5, -0.5) + vec2(0.5, 0.5);
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 hw_tier00 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[28];
						float _Interp;
						vec4 _TargetColor;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = (-u_xlat0) + _TargetColor;
					    SV_Target0 = vec4(_Interp) * u_xlat1 + u_xlat0;
					    return;
					}"
				}
				SubProgram "d3d11 hw_tier01 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[28];
						float _Interp;
						vec4 _TargetColor;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = (-u_xlat0) + _TargetColor;
					    SV_Target0 = vec4(_Interp) * u_xlat1 + u_xlat0;
					    return;
					}"
				}
				SubProgram "d3d11 hw_tier02 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[28];
						float _Interp;
						vec4 _TargetColor;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = (-u_xlat0) + _TargetColor;
					    SV_Target0 = vec4(_Interp) * u_xlat1 + u_xlat0;
					    return;
					}"
				}
			}
		}
	}
}