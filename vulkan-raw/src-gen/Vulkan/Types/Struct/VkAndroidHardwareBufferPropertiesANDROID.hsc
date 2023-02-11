{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Struct.VkAndroidHardwareBufferPropertiesANDROID where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAndroidHardwareBufferPropertiesANDROID" #-} VkAndroidHardwareBufferPropertiesANDROID =
       VkAndroidHardwareBufferPropertiesANDROID
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , allocationSize :: VkDeviceSize
         , memoryTypeBits :: #{type uint32_t}
         }

instance Storable VkAndroidHardwareBufferPropertiesANDROID where
  sizeOf    _ = #{size      struct VkAndroidHardwareBufferPropertiesANDROID}
  alignment _ = #{alignment struct VkAndroidHardwareBufferPropertiesANDROID}

  peek ptr = 
    VkAndroidHardwareBufferPropertiesANDROID
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"allocationSize" ptr)
       <*> peek (offset @"memoryTypeBits" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"allocationSize" ptr val
    pokeField @"memoryTypeBits" ptr val

instance Offset "sType" VkAndroidHardwareBufferPropertiesANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferPropertiesANDROID, sType}

instance Offset "pNext" VkAndroidHardwareBufferPropertiesANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferPropertiesANDROID, pNext}

instance Offset "allocationSize" VkAndroidHardwareBufferPropertiesANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferPropertiesANDROID, allocationSize}

instance Offset "memoryTypeBits" VkAndroidHardwareBufferPropertiesANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferPropertiesANDROID, memoryTypeBits}

#else

module Vulkan.Types.Struct.VkAndroidHardwareBufferPropertiesANDROID where

#endif