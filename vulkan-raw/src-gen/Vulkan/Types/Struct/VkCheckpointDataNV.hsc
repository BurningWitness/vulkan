{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostic_checkpoints

module Vulkan.Types.Struct.VkCheckpointDataNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCheckpointDataNV" #-} VkCheckpointDataNV =
       VkCheckpointDataNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stage :: VkPipelineStageFlagBits
         , pCheckpointMarker :: Ptr ()
         }

instance Storable VkCheckpointDataNV where
  sizeOf    _ = #{size      struct VkCheckpointDataNV}
  alignment _ = #{alignment struct VkCheckpointDataNV}

  peek ptr = 
    VkCheckpointDataNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stage" ptr)
       <*> peek (offset @"pCheckpointMarker" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stage" ptr val
    pokeField @"pCheckpointMarker" ptr val

instance Offset "sType" VkCheckpointDataNV where
  rawOffset = #{offset struct VkCheckpointDataNV, sType}

instance Offset "pNext" VkCheckpointDataNV where
  rawOffset = #{offset struct VkCheckpointDataNV, pNext}

instance Offset "stage" VkCheckpointDataNV where
  rawOffset = #{offset struct VkCheckpointDataNV, stage}

instance Offset "pCheckpointMarker" VkCheckpointDataNV where
  rawOffset = #{offset struct VkCheckpointDataNV, pCheckpointMarker}

#else

module Vulkan.Types.Struct.VkCheckpointDataNV where

#endif