{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Struct.VkOpticalFlowImageFormatPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkOpticalFlowImageFormatPropertiesNV" #-} VkOpticalFlowImageFormatPropertiesNV =
       VkOpticalFlowImageFormatPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         }

instance Storable VkOpticalFlowImageFormatPropertiesNV where
  sizeOf    _ = #{size      struct VkOpticalFlowImageFormatPropertiesNV}
  alignment _ = #{alignment struct VkOpticalFlowImageFormatPropertiesNV}

  peek ptr = 
    VkOpticalFlowImageFormatPropertiesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"format" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"format" ptr val

instance Offset "sType" VkOpticalFlowImageFormatPropertiesNV where
  rawOffset = #{offset struct VkOpticalFlowImageFormatPropertiesNV, sType}

instance Offset "pNext" VkOpticalFlowImageFormatPropertiesNV where
  rawOffset = #{offset struct VkOpticalFlowImageFormatPropertiesNV, pNext}

instance Offset "format" VkOpticalFlowImageFormatPropertiesNV where
  rawOffset = #{offset struct VkOpticalFlowImageFormatPropertiesNV, format}

#else

module Vulkan.Types.Struct.VkOpticalFlowImageFormatPropertiesNV where

#endif