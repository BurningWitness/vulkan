{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_incremental_present

module Vulkan.Types.Struct.VkPresentRegionsKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPresentRegionKHR



data {-# CTYPE "vulkan/vulkan.h" "VkPresentRegionsKHR" #-} VkPresentRegionsKHR =
       VkPresentRegionsKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchainCount :: #{type uint32_t} -- ^ Copy of VkPresentInfoKHR::swapchainCount
         , pRegions :: Ptr VkPresentRegionKHR -- ^ The regions that have changed
         }

instance Storable VkPresentRegionsKHR where
  sizeOf    _ = #{size      struct VkPresentRegionsKHR}
  alignment _ = #{alignment struct VkPresentRegionsKHR}

  peek ptr = 
    VkPresentRegionsKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchainCount" ptr)
       <*> peek (offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkPresentRegionsKHR where
  rawOffset = #{offset struct VkPresentRegionsKHR, sType}

instance Offset "pNext" VkPresentRegionsKHR where
  rawOffset = #{offset struct VkPresentRegionsKHR, pNext}

instance Offset "swapchainCount" VkPresentRegionsKHR where
  rawOffset = #{offset struct VkPresentRegionsKHR, swapchainCount}

instance Offset "pRegions" VkPresentRegionsKHR where
  rawOffset = #{offset struct VkPresentRegionsKHR, pRegions}

#else

module Vulkan.Types.Struct.VkPresentRegionsKHR where

#endif