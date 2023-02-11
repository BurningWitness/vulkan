{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_display_timing

module Vulkan.Types.Struct.VkPresentTimesInfoGOOGLE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPresentTimeGOOGLE



data {-# CTYPE "vulkan/vulkan.h" "VkPresentTimesInfoGOOGLE" #-} VkPresentTimesInfoGOOGLE =
       VkPresentTimesInfoGOOGLE
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchainCount :: #{type uint32_t} -- ^ Copy of VkPresentInfoKHR::swapchainCount
         , pTimes :: Ptr VkPresentTimeGOOGLE -- ^ The earliest times to present images
         }

instance Storable VkPresentTimesInfoGOOGLE where
  sizeOf    _ = #{size      struct VkPresentTimesInfoGOOGLE}
  alignment _ = #{alignment struct VkPresentTimesInfoGOOGLE}

  peek ptr = 
    VkPresentTimesInfoGOOGLE
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchainCount" ptr)
       <*> peek (offset @"pTimes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pTimes" ptr val

instance Offset "sType" VkPresentTimesInfoGOOGLE where
  rawOffset = #{offset struct VkPresentTimesInfoGOOGLE, sType}

instance Offset "pNext" VkPresentTimesInfoGOOGLE where
  rawOffset = #{offset struct VkPresentTimesInfoGOOGLE, pNext}

instance Offset "swapchainCount" VkPresentTimesInfoGOOGLE where
  rawOffset = #{offset struct VkPresentTimesInfoGOOGLE, swapchainCount}

instance Offset "pTimes" VkPresentTimesInfoGOOGLE where
  rawOffset = #{offset struct VkPresentTimesInfoGOOGLE, pTimes}

#else

module Vulkan.Types.Struct.VkPresentTimesInfoGOOGLE where

#endif