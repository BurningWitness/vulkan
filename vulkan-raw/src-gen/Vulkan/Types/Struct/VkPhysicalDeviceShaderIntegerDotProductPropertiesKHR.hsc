{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_integer_dot_product

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR" #-} VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR =
       VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR
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

instance Storable VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct8BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct8BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct8BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct4x8BitPackedUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct4x8BitPackedSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct4x8BitPackedMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct16BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct16BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct16BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct32BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct32BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct32BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct64BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct64BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProduct64BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating8BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating8BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating16BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating16BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating32BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating32BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating64BitUnsignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating64BitSignedAccelerated" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated" ptr)

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

instance Offset "sType" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, pNext}

instance Offset "integerDotProduct8BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct8BitUnsignedAccelerated}

instance Offset "integerDotProduct8BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct8BitSignedAccelerated}

instance Offset "integerDotProduct8BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct8BitMixedSignednessAccelerated}

instance Offset "integerDotProduct4x8BitPackedUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct4x8BitPackedUnsignedAccelerated}

instance Offset "integerDotProduct4x8BitPackedSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct4x8BitPackedSignedAccelerated}

instance Offset "integerDotProduct4x8BitPackedMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct4x8BitPackedMixedSignednessAccelerated}

instance Offset "integerDotProduct16BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct16BitUnsignedAccelerated}

instance Offset "integerDotProduct16BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct16BitSignedAccelerated}

instance Offset "integerDotProduct16BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct16BitMixedSignednessAccelerated}

instance Offset "integerDotProduct32BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct32BitUnsignedAccelerated}

instance Offset "integerDotProduct32BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct32BitSignedAccelerated}

instance Offset "integerDotProduct32BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct32BitMixedSignednessAccelerated}

instance Offset "integerDotProduct64BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct64BitUnsignedAccelerated}

instance Offset "integerDotProduct64BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct64BitSignedAccelerated}

instance Offset "integerDotProduct64BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProduct64BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating8BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating8BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating16BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating16BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating32BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating32BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitUnsignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating64BitUnsignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitSignedAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating64BitSignedAccelerated}

instance Offset "integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated" VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR, integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR where

#endif