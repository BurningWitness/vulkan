{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_linear_color_attachment

module Vulkan.Types.Struct.VkPhysicalDeviceLinearColorAttachmentFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceLinearColorAttachmentFeaturesNV" #-} VkPhysicalDeviceLinearColorAttachmentFeaturesNV =
       VkPhysicalDeviceLinearColorAttachmentFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , linearColorAttachment :: VkBool32
         }

instance Storable VkPhysicalDeviceLinearColorAttachmentFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceLinearColorAttachmentFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceLinearColorAttachmentFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceLinearColorAttachmentFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"linearColorAttachment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"linearColorAttachment" ptr val

instance Offset "sType" VkPhysicalDeviceLinearColorAttachmentFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceLinearColorAttachmentFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceLinearColorAttachmentFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceLinearColorAttachmentFeaturesNV, pNext}

instance Offset "linearColorAttachment" VkPhysicalDeviceLinearColorAttachmentFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceLinearColorAttachmentFeaturesNV, linearColorAttachment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceLinearColorAttachmentFeaturesNV where

#endif