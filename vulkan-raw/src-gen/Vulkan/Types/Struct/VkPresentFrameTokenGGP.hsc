{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_GGP_frame_token

module Vulkan.Types.Struct.VkPresentFrameTokenGGP where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPresentFrameTokenGGP" #-} VkPresentFrameTokenGGP =
       VkPresentFrameTokenGGP
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , frameToken :: GgpFrameToken
         }

instance Storable VkPresentFrameTokenGGP where
  sizeOf    _ = #{size      struct VkPresentFrameTokenGGP}
  alignment _ = #{alignment struct VkPresentFrameTokenGGP}

  peek ptr = 
    VkPresentFrameTokenGGP
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"frameToken" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"frameToken" ptr val

instance Offset "sType" VkPresentFrameTokenGGP where
  rawOffset = #{offset struct VkPresentFrameTokenGGP, sType}

instance Offset "pNext" VkPresentFrameTokenGGP where
  rawOffset = #{offset struct VkPresentFrameTokenGGP, pNext}

instance Offset "frameToken" VkPresentFrameTokenGGP where
  rawOffset = #{offset struct VkPresentFrameTokenGGP, frameToken}

#else

module Vulkan.Types.Struct.VkPresentFrameTokenGGP where

#endif