{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalFenceInfo" #-} VkPhysicalDeviceExternalFenceInfo =
       VkPhysicalDeviceExternalFenceInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalFenceHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalFenceInfo where
  sizeOf    _ = #{size      struct VkPhysicalDeviceExternalFenceInfo}
  alignment _ = #{alignment struct VkPhysicalDeviceExternalFenceInfo}

  peek ptr = 
    VkPhysicalDeviceExternalFenceInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalFenceInfo where
  rawOffset = #{offset struct VkPhysicalDeviceExternalFenceInfo, sType}

instance Offset "pNext" VkPhysicalDeviceExternalFenceInfo where
  rawOffset = #{offset struct VkPhysicalDeviceExternalFenceInfo, pNext}

instance Offset "handleType" VkPhysicalDeviceExternalFenceInfo where
  rawOffset = #{offset struct VkPhysicalDeviceExternalFenceInfo, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfo where

#endif