public module sys/dom/typedarray/arrayBuffer

// Interface ArrayBuffer (generated by esidl 0.2.0).

import sys/dom/types

/* safe and unsafe conversion from all types including `any */
external inline maybeArrayBuffer  : forall<a> (a) -> maybe<arrayBuffer>
{ inline "(#1.toString()==='[object ArrayBuffer]'?std_core.Just(#1):std_core.Nothing)" }
external inline toArrayBuffer : forall<a> (a) -> exn arrayBuffer
{ inline "(#1.toString()==='[object ArrayBuffer]'?#1:std_core.error('toArrayBuffer: cast failed'))" }


// ArrayBuffer implements ArrayBuffer (supplemental)
external inline byteLength : (this: arrayBuffer) -> dom uint32
{ inline "#1.byteLength" }
