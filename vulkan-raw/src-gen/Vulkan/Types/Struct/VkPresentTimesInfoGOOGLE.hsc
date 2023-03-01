{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPresentTimesInfoGOOGLE}
  alignment _ = #{alignment VkPresentTimesInfoGOOGLE}

  peek ptr = 
    VkPresentTimesInfoGOOGLE
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"swapchainCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pTimes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pTimes" ptr val

instance Offset "sType" VkPresentTimesInfoGOOGLE where
  rawOffset = #{offset VkPresentTimesInfoGOOGLE, sType}

instance Offset "pNext" VkPresentTimesInfoGOOGLE where
  rawOffset = #{offset VkPresentTimesInfoGOOGLE, pNext}

instance Offset "swapchainCount" VkPresentTimesInfoGOOGLE where
  rawOffset = #{offset VkPresentTimesInfoGOOGLE, swapchainCount}

instance Offset "pTimes" VkPresentTimesInfoGOOGLE where
  rawOffset = #{offset VkPresentTimesInfoGOOGLE, pTimes}

#else

module Vulkan.Types.Struct.VkPresentTimesInfoGOOGLE where

#endif