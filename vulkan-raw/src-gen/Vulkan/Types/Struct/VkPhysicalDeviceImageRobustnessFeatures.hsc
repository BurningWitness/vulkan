{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceImageRobustnessFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageRobustnessFeatures" #-} VkPhysicalDeviceImageRobustnessFeatures =
       VkPhysicalDeviceImageRobustnessFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , robustImageAccess :: VkBool32
         }

instance Storable VkPhysicalDeviceImageRobustnessFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceImageRobustnessFeatures}
  alignment _ = #{alignment VkPhysicalDeviceImageRobustnessFeatures}

  peek ptr = 
    VkPhysicalDeviceImageRobustnessFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"robustImageAccess" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"robustImageAccess" ptr val

instance Offset "sType" VkPhysicalDeviceImageRobustnessFeatures where
  rawOffset = #{offset VkPhysicalDeviceImageRobustnessFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceImageRobustnessFeatures where
  rawOffset = #{offset VkPhysicalDeviceImageRobustnessFeatures, pNext}

instance Offset "robustImageAccess" VkPhysicalDeviceImageRobustnessFeatures where
  rawOffset = #{offset VkPhysicalDeviceImageRobustnessFeatures, robustImageAccess}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageRobustnessFeatures where

#endif