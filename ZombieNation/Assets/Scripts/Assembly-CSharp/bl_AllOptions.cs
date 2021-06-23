using UnityEngine;
using UnityEngine.UI;

public class bl_AllOptions : MonoBehaviour
{
	[SerializeField]
	private GameObject[] Panels;
	[SerializeField]
	private Button[] PanelButtons;
	[SerializeField]
	private Animator PanelAnimator;
	public bool ApplyOnStart;
	public bool AutoApplyResolution;
	public bool SaveOnDisable;
	public int StartWindow;
	[SerializeField]
	private int DefaultQuality;
	[SerializeField]
	private int DefaultResolution;
	[SerializeField]
	private int DefaultAntiAliasing;
	[SerializeField]
	private int DefaultAnisoTropic;
	[SerializeField]
	private int DefaultVSync;
	[SerializeField]
	private int DefaultBlendWeight;
	[SerializeField]
	private int DefaultShadowDistance;
	[SerializeField]
	private string[] AntiAliasingNames;
	[SerializeField]
	private string[] VSyncNames;
	[SerializeField]
	private string[] TextureQualityNames;
	[SerializeField]
	private string[] ShadowCascadeNames;
	public Text QualityText;
	public Text AnisotropicText;
	public Text AntiAliasingText;
	public Text vSyncText;
	public Text blendWeightsText;
	public Text ResolutionText;
	[SerializeField]
	private Text FullScreenOnText;
	[SerializeField]
	private Text TextureLimitText;
	[SerializeField]
	private Text ShadowCascadeText;
	[SerializeField]
	private Text ShowFPSText;
	[SerializeField]
	private Text ShadowDistanceText;
	[SerializeField]
	private Slider ShadowDistanceSlider;
	[SerializeField]
	private Text ShadowProjectionText;
	[SerializeField]
	private Text PauseText;
	[SerializeField]
	private Text VolumenText;
	[SerializeField]
	private Slider VolumenSlider;
	[SerializeField]
	private Text TitlePanelText;
	[SerializeField]
	private GameObject[] FPSObject;
}
