{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2 && VK_NV_device_diagnostic_checkpoints

module Vulkan.Types.Struct.VkCheckpointData2NV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCheckpointData2NV" #-} VkCheckpointData2NV =
       VkCheckpointData2NV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stage :: VkPipelineStageFlags2
         , pCheckpointMarker :: Ptr ()
         }

instance Storable VkCheckpointData2NV where
  sizeOf    _ = #{size      VkCheckpointData2NV}
  alignment _ = #{alignment VkCheckpointData2NV}

  peek ptr = 
    VkCheckpointData2NV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCheckpointMarker" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stage" ptr val
    pokeField @"pCheckpointMarker" ptr val

instance Offset "sType" VkCheckpointData2NV where
  rawOffset = #{offset VkCheckpointData2NV, sType}

instance Offset "pNext" VkCheckpointData2NV where
  rawOffset = #{offset VkCheckpointData2NV, pNext}

instance Offset "stage" VkCheckpointData2NV where
  rawOffset = #{offset VkCheckpointData2NV, stage}

instance Offset "pCheckpointMarker" VkCheckpointData2NV where
  rawOffset = #{offset VkCheckpointData2NV, pCheckpointMarker}

#else

module Vulkan.Types.Struct.VkCheckpointData2NV where

#endif