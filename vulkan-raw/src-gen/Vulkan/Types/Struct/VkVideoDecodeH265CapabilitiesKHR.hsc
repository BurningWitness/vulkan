{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h265

module Vulkan.Types.Struct.VkVideoDecodeH265CapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH265CapabilitiesKHR" #-} VkVideoDecodeH265CapabilitiesKHR =
       VkVideoDecodeH265CapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxLevelIdc :: StdVideoH265LevelIdc
         }

instance Storable VkVideoDecodeH265CapabilitiesKHR where
  sizeOf    _ = #{size      VkVideoDecodeH265CapabilitiesKHR}
  alignment _ = #{alignment VkVideoDecodeH265CapabilitiesKHR}

  peek ptr = 
    VkVideoDecodeH265CapabilitiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxLevelIdc" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxLevelIdc" ptr val

instance Offset "sType" VkVideoDecodeH265CapabilitiesKHR where
  rawOffset = #{offset VkVideoDecodeH265CapabilitiesKHR, sType}

instance Offset "pNext" VkVideoDecodeH265CapabilitiesKHR where
  rawOffset = #{offset VkVideoDecodeH265CapabilitiesKHR, pNext}

instance Offset "maxLevelIdc" VkVideoDecodeH265CapabilitiesKHR where
  rawOffset = #{offset VkVideoDecodeH265CapabilitiesKHR, maxLevelIdc}

#else

module Vulkan.Types.Struct.VkVideoDecodeH265CapabilitiesKHR where

#endif