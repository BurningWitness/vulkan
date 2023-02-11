{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Struct.VkPhysicalDeviceOpticalFlowFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceOpticalFlowFeaturesNV" #-} VkPhysicalDeviceOpticalFlowFeaturesNV =
       VkPhysicalDeviceOpticalFlowFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , opticalFlow :: VkBool32
         }

instance Storable VkPhysicalDeviceOpticalFlowFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceOpticalFlowFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceOpticalFlowFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceOpticalFlowFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"opticalFlow" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"opticalFlow" ptr val

instance Offset "sType" VkPhysicalDeviceOpticalFlowFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceOpticalFlowFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowFeaturesNV, pNext}

instance Offset "opticalFlow" VkPhysicalDeviceOpticalFlowFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowFeaturesNV, opticalFlow}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceOpticalFlowFeaturesNV where

#endif