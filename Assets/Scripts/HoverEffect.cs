using UnityEngine;

public class HoverEffect : MonoBehaviour
{
    [Header("Schaalinstellingen")]
    public float scaleOnHover = 1.1f;

    private Vector3 originalScale;

    void Start()
    {
        originalScale = transform.localScale;
    }

    void OnMouseEnter()
    {
        transform.localScale = originalScale * scaleOnHover;
    }

    void OnMouseExit()
    {
        transform.localScale = originalScale;
    }
}
