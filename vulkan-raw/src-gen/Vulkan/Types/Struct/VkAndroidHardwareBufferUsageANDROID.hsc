{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Struct.VkAndroidHardwareBufferUsageANDROID where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAndroidHardwareBufferUsageANDROID" #-} VkAndroidHardwareBufferUsageANDROID =
       VkAndroidHardwareBufferUsageANDROID
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , androidHardwareBufferUsage :: #{type uint64_t}
         }

instance Storable VkAndroidHardwareBufferUsageANDROID where
  sizeOf    _ = #{size      VkAndroidHardwareBufferUsageANDROID}
  alignment _ = #{alignment VkAndroidHardwareBufferUsageANDROID}

  peek ptr = 
    VkAndroidHardwareBufferUsageANDROID
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"androidHardwareBufferUsage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"androidHardwareBufferUsage" ptr val

instance Offset "sType" VkAndroidHardwareBufferUsageANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferUsageANDROID, sType}

instance Offset "pNext" VkAndroidHardwareBufferUsageANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferUsageANDROID, pNext}

instance Offset "androidHardwareBufferUsage" VkAndroidHardwareBufferUsageANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferUsageANDROID, androidHardwareBufferUsage}

#else

module Vulkan.Types.Struct.VkAndroidHardwareBufferUsageANDROID where

#endif