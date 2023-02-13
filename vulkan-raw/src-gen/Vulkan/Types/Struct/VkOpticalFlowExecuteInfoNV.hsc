{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Struct.VkOpticalFlowExecuteInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkOpticalFlowExecuteFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkOpticalFlowExecuteInfoNV" #-} VkOpticalFlowExecuteInfoNV =
       VkOpticalFlowExecuteInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkOpticalFlowExecuteFlagsNV
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkRect2D
         }

instance Storable VkOpticalFlowExecuteInfoNV where
  sizeOf    _ = #{size      VkOpticalFlowExecuteInfoNV}
  alignment _ = #{alignment VkOpticalFlowExecuteInfoNV}

  peek ptr = 
    VkOpticalFlowExecuteInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"regionCount" ptr)
       <*> peek (offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkOpticalFlowExecuteInfoNV where
  rawOffset = #{offset VkOpticalFlowExecuteInfoNV, sType}

instance Offset "pNext" VkOpticalFlowExecuteInfoNV where
  rawOffset = #{offset VkOpticalFlowExecuteInfoNV, pNext}

instance Offset "flags" VkOpticalFlowExecuteInfoNV where
  rawOffset = #{offset VkOpticalFlowExecuteInfoNV, flags}

instance Offset "regionCount" VkOpticalFlowExecuteInfoNV where
  rawOffset = #{offset VkOpticalFlowExecuteInfoNV, regionCount}

instance Offset "pRegions" VkOpticalFlowExecuteInfoNV where
  rawOffset = #{offset VkOpticalFlowExecuteInfoNV, pRegions}

#else

module Vulkan.Types.Struct.VkOpticalFlowExecuteInfoNV where

#endif