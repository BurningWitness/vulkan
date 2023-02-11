{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Struct.VkMemoryGetAndroidHardwareBufferInfoANDROID where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryGetAndroidHardwareBufferInfoANDROID" #-} VkMemoryGetAndroidHardwareBufferInfoANDROID =
       VkMemoryGetAndroidHardwareBufferInfoANDROID
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         }

instance Storable VkMemoryGetAndroidHardwareBufferInfoANDROID where
  sizeOf    _ = #{size      struct VkMemoryGetAndroidHardwareBufferInfoANDROID}
  alignment _ = #{alignment struct VkMemoryGetAndroidHardwareBufferInfoANDROID}

  peek ptr = 
    VkMemoryGetAndroidHardwareBufferInfoANDROID
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val

instance Offset "sType" VkMemoryGetAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset struct VkMemoryGetAndroidHardwareBufferInfoANDROID, sType}

instance Offset "pNext" VkMemoryGetAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset struct VkMemoryGetAndroidHardwareBufferInfoANDROID, pNext}

instance Offset "memory" VkMemoryGetAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset struct VkMemoryGetAndroidHardwareBufferInfoANDROID, memory}

#else

module Vulkan.Types.Struct.VkMemoryGetAndroidHardwareBufferInfoANDROID where

#endif