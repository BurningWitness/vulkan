{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoCodingControlInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoCodingControlFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoCodingControlInfoKHR" #-} VkVideoCodingControlInfoKHR =
       VkVideoCodingControlInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoCodingControlFlagsKHR
         }

instance Storable VkVideoCodingControlInfoKHR where
  sizeOf    _ = #{size      struct VkVideoCodingControlInfoKHR}
  alignment _ = #{alignment struct VkVideoCodingControlInfoKHR}

  peek ptr = 
    VkVideoCodingControlInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkVideoCodingControlInfoKHR where
  rawOffset = #{offset struct VkVideoCodingControlInfoKHR, sType}

instance Offset "pNext" VkVideoCodingControlInfoKHR where
  rawOffset = #{offset struct VkVideoCodingControlInfoKHR, pNext}

instance Offset "flags" VkVideoCodingControlInfoKHR where
  rawOffset = #{offset struct VkVideoCodingControlInfoKHR, flags}

#else

module Vulkan.Types.Struct.VkVideoCodingControlInfoKHR where

#endif