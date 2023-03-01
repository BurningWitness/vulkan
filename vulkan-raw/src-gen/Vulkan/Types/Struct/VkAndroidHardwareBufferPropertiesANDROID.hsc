{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkAndroidHardwareBufferPropertiesANDROID}
  alignment _ = #{alignment VkAndroidHardwareBufferPropertiesANDROID}

  peek ptr = 
    VkAndroidHardwareBufferPropertiesANDROID
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"allocationSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryTypeBits" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"allocationSize" ptr val
    pokeField @"memoryTypeBits" ptr val

instance Offset "sType" VkAndroidHardwareBufferPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferPropertiesANDROID, sType}

instance Offset "pNext" VkAndroidHardwareBufferPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferPropertiesANDROID, pNext}

instance Offset "allocationSize" VkAndroidHardwareBufferPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferPropertiesANDROID, allocationSize}

instance Offset "memoryTypeBits" VkAndroidHardwareBufferPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferPropertiesANDROID, memoryTypeBits}

#else

module Vulkan.Types.Struct.VkAndroidHardwareBufferPropertiesANDROID where

#endif