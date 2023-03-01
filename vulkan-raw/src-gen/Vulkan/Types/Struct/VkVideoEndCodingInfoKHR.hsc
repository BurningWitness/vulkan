{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoEndCodingInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEndCodingFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEndCodingInfoKHR" #-} VkVideoEndCodingInfoKHR =
       VkVideoEndCodingInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoEndCodingFlagsKHR
         }

instance Storable VkVideoEndCodingInfoKHR where
  sizeOf    _ = #{size      VkVideoEndCodingInfoKHR}
  alignment _ = #{alignment VkVideoEndCodingInfoKHR}

  peek ptr = 
    VkVideoEndCodingInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkVideoEndCodingInfoKHR where
  rawOffset = #{offset VkVideoEndCodingInfoKHR, sType}

instance Offset "pNext" VkVideoEndCodingInfoKHR where
  rawOffset = #{offset VkVideoEndCodingInfoKHR, pNext}

instance Offset "flags" VkVideoEndCodingInfoKHR where
  rawOffset = #{offset VkVideoEndCodingInfoKHR, flags}

#else

module Vulkan.Types.Struct.VkVideoEndCodingInfoKHR where

#endif