{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderIntegerDotProductProperties" #-} VkPhysicalDeviceShaderIntegerDotProductProperties =
       VkPhysicalDeviceShaderIntegerDotProductProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , integerDotProduct8BitUnsignedAccelerated :: VkBool32
         , integerDotProduct8BitSignedAccelerated :: VkBool32
         , integerDotProduct8BitMixedSignednessAccelerated :: VkBool32
         , integerDotProduct4x8BitPackedUnsignedAccelerated :: VkBool32
         , integerDotProduct4x8BitPackedSignedAccelerated :: VkBool32
         , integerDotProduct4x8BitPackedMixedSignednessAccelerated :: VkBool32
         , integerDotProduct16BitUnsignedAccelerated :: VkBool32
         , integerDotProduct16BitSignedAccelerated :: VkBool32
         , integerDotProduct16BitMixedSignednessAccelerated :: VkBool32
         , integerDotProduct32BitUnsignedAccelerated :: VkBool32
         , integerDotProduct32BitSignedAccelerated :: VkBool32
         , integerDotProduct32BitMixedSignednessAccelerated :: VkBool32
         , integerDotProduct64BitUnsignedAccelerated :: VkBool32
         , integerDotProduct64BitSignedAccelerated :: VkBool32
         , integerDotProduct64BitMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating8BitUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating8BitSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating16BitUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating16BitSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating32BitUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating32BitSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating64BitUnsignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating64BitSignedAccelerated :: VkBool32
         , integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderIntegerDotProductProperties where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderIntegerDotProductProperties}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderIntegerDotProductProperties}

  peek ptr = 
    VkPhysicalDeviceShaderIntegerDotProductProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"integerDotProduct8BitUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct8BitSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct8BitMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProduct4x8BitPackedUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct4x8BitPackedSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct4x8BitPackedMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProduct16BitUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct16BitSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct16BitMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProduct32BitUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct32BitSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct32BitMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProduct64BitUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct64BitSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProduct64BitMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating8BitUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating8BitSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating16BitUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating16BitSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating32BitUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating32BitSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating64BitUnsignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating64BitSignedAccelerated" ptr)
       <*> peek (offset @"integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"integerDotProduct8BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct8BitSignedAccelerated" ptr val
    pokeField @"integerDotProduct8BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProduct4x8BitPackedUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct4x8BitPackedSignedAccelerated" ptr val
    pokeField @"integerDotProduct4x8BitPackedMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProduct16BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct16BitSignedAccelerated" ptr val
    pokeField @"integerDotProduct16BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProduct32BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct32BitSignedAccelerated" ptr val
    pokeField @"integerDotProduct32BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProduct64BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProduct64BitSignedAccelerated" ptr val
    pokeField @"integerDotProduct64BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating8BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating8BitSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating16BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating16BitSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating32BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating32BitSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating64BitUnsignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating64BitSignedAccelerated" ptr val
    pokeField @"integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated" ptr val

instance Offset "sType" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, sType}

instance Offset "pNext" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, pNext}

instance Offset "integerDotProduct8BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct8BitUnsignedAccelerated}

instance Offset "integerDotProduct8BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct8BitSignedAccelerated}

instance Offset "integerDotProduct8BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct8BitMixedSignednessAccelerated}

instance Offset "integerDotProduct4x8BitPackedUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct4x8BitPackedUnsignedAccelerated}

instance Offset "integerDotProduct4x8BitPackedSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct4x8BitPackedSignedAccelerated}

instance Offset "integerDotProduct4x8BitPackedMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct4x8BitPackedMixedSignednessAccelerated}

instance Offset "integerDotProduct16BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct16BitUnsignedAccelerated}

instance Offset "integerDotProduct16BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct16BitSignedAccelerated}

instance Offset "integerDotProduct16BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct16BitMixedSignednessAccelerated}

instance Offset "integerDotProduct32BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct32BitUnsignedAccelerated}

instance Offset "integerDotProduct32BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct32BitSignedAccelerated}

instance Offset "integerDotProduct32BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct32BitMixedSignednessAccelerated}

instance Offset "integerDotProduct64BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct64BitUnsignedAccelerated}

instance Offset "integerDotProduct64BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct64BitSignedAccelerated}

instance Offset "integerDotProduct64BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProduct64BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating8BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating8BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating16BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating16BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating32BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating32BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating64BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating64BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductProperties where
  rawOffset = #{offset struct VkPhysicalDeviceShaderIntegerDotProductProperties, integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductProperties where

#endif