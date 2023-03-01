{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPresentRegionsKHR}
  alignment _ = #{alignment VkPresentRegionsKHR}

  peek ptr = 
    VkPresentRegionsKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"swapchainCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkPresentRegionsKHR where
  rawOffset = #{offset VkPresentRegionsKHR, sType}

instance Offset "pNext" VkPresentRegionsKHR where
  rawOffset = #{offset VkPresentRegionsKHR, pNext}

instance Offset "swapchainCount" VkPresentRegionsKHR where
  rawOffset = #{offset VkPresentRegionsKHR, swapchainCount}

instance Offset "pRegions" VkPresentRegionsKHR where
  rawOffset = #{offset VkPresentRegionsKHR, pRegions}

#else

module Vulkan.Types.Struct.VkPresentRegionsKHR where

#endif