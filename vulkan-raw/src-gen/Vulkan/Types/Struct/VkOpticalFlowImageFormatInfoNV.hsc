{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Struct.VkOpticalFlowImageFormatInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkOpticalFlowUsageFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkOpticalFlowImageFormatInfoNV" #-} VkOpticalFlowImageFormatInfoNV =
       VkOpticalFlowImageFormatInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , usage :: VkOpticalFlowUsageFlagsNV
         }

instance Storable VkOpticalFlowImageFormatInfoNV where
  sizeOf    _ = #{size      VkOpticalFlowImageFormatInfoNV}
  alignment _ = #{alignment VkOpticalFlowImageFormatInfoNV}

  peek ptr = 
    VkOpticalFlowImageFormatInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"usage" ptr val

instance Offset "sType" VkOpticalFlowImageFormatInfoNV where
  rawOffset = #{offset VkOpticalFlowImageFormatInfoNV, sType}

instance Offset "pNext" VkOpticalFlowImageFormatInfoNV where
  rawOffset = #{offset VkOpticalFlowImageFormatInfoNV, pNext}

instance Offset "usage" VkOpticalFlowImageFormatInfoNV where
  rawOffset = #{offset VkOpticalFlowImageFormatInfoNV, usage}

#else

module Vulkan.Types.Struct.VkOpticalFlowImageFormatInfoNV where

#endif