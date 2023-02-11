{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Struct.VkOpticalFlowSessionCreatePrivateDataInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkOpticalFlowSessionCreatePrivateDataInfoNV" #-} VkOpticalFlowSessionCreatePrivateDataInfoNV =
       VkOpticalFlowSessionCreatePrivateDataInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , id :: #{type uint32_t}
         , size :: #{type uint32_t}
         , pPrivateData :: Ptr ()
         }

instance Storable VkOpticalFlowSessionCreatePrivateDataInfoNV where
  sizeOf    _ = #{size      struct VkOpticalFlowSessionCreatePrivateDataInfoNV}
  alignment _ = #{alignment struct VkOpticalFlowSessionCreatePrivateDataInfoNV}

  peek ptr = 
    VkOpticalFlowSessionCreatePrivateDataInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"id" ptr)
       <*> peek (offset @"size" ptr)
       <*> peek (offset @"pPrivateData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"id" ptr val
    pokeField @"size" ptr val
    pokeField @"pPrivateData" ptr val

instance Offset "sType" VkOpticalFlowSessionCreatePrivateDataInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreatePrivateDataInfoNV, sType}

instance Offset "pNext" VkOpticalFlowSessionCreatePrivateDataInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreatePrivateDataInfoNV, pNext}

instance Offset "id" VkOpticalFlowSessionCreatePrivateDataInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreatePrivateDataInfoNV, id}

instance Offset "size" VkOpticalFlowSessionCreatePrivateDataInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreatePrivateDataInfoNV, size}

instance Offset "pPrivateData" VkOpticalFlowSessionCreatePrivateDataInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreatePrivateDataInfoNV, pPrivateData}

#else

module Vulkan.Types.Struct.VkOpticalFlowSessionCreatePrivateDataInfoNV where

#endif