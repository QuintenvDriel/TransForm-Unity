using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Collider2D))]
public class Interactable : MonoBehaviour
{
    [Header("Wat gebeurt er als je dit object aanklikt?")]
    public UnityEvent onInteract;

    private void OnMouseDown()
    {
        // Wordt aangeroepen als je met de muis op het object klikt
        onInteract.Invoke();
    }
}
